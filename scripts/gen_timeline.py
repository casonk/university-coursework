#!/usr/bin/env python3
"""Generate docs/course-timeline.drawio and docs/course-timeline.png.

Data source: transcripts/courses.json (gitignored, covers all 37 UM-Flint courses).
Run from repo root: python3 scripts/gen_timeline.py
"""

import html
import json
import os
from PIL import Image, ImageDraw, ImageFont

# ── Layout (draw.io units = logical pixels) ───────────────────────────────────
BORDER   = 12
LABEL_W  = 228
COL_W    = 86
ROW_H    = 36
GROUP_H  = 26
HEADER_H = 38
LX       = BORDER
CX       = LX + LABEL_W

SCALE = 2

FONT_REG  = "/usr/share/fonts/liberation-sans-fonts/LiberationSans-Regular.ttf"
FONT_BOLD = "/usr/share/fonts/liberation-sans-fonts/LiberationSans-Bold.ttf"

# ── Colors ────────────────────────────────────────────────────────────────────
# Bright = courses with repo folders; _d = dimmed = no submitted work
# wstr/occ/hs = transfer-institution bars (always no repo)
C = {
    "bg":        "#2B2B2B",
    "hdr":       "#141414",
    "lbl":       "#1E1E1E",
    "stroke":    "#555555",
    "font":      "#EEEEEE",
    "grp_cs":    "#0C3361",
    "grp_mt":    "#3A0D60",
    "grp_ec":    "#0B431A",
    "grp_gen":   "#3E2A1A",
    "grp_wstr":  "#004D5C",
    "grp_occ":   "#7F2700",
    "grp_hs":    "#4A0E5C",
    "bar_ug":    "#1565C0",
    "bar_ug_d":  "#4A6FA5",
    "bar_gr":    "#283593",
    "bar_gr_d":  "#3D4D80",
    "bar_mt":    "#6A1B9A",
    "bar_mt_d":  "#7B4D9A",
    "bar_ec":    "#2E7D32",
    "bar_ec_d":  "#4E7A52",
    "bar_inb":   "#1B5E20",
    "bar_inb_d": "#2E5E33",
    "bar_gen":   "#546E7A",
    "bar_wstr":  "#0097A7",
    "bar_occ":   "#F4511E",
    "bar_hs":    "#8E24AA",
}


def hex2rgb(h):
    h = h.lstrip("#")
    return tuple(int(h[i:i+2], 16) for i in (0, 2, 4))


def _bar_key(code, repo, source="umf"):
    """Derive the color key from course code, repo flag, and source institution."""
    if source != "umf":
        return f"bar_{source}"
    parts = code.split()
    prefix = parts[0]
    try:
        num = int(parts[1]) if len(parts) > 1 else 0
    except ValueError:
        return "bar_gen"
    if prefix in ("CSC", "CIS"):
        base = "bar_gr" if num >= 500 else "bar_ug"
    elif prefix == "MTH":
        base = "bar_mt"
    elif prefix == "ECN":
        base = "bar_ec"
    elif prefix == "INB":
        base = "bar_inb"
    else:
        return "bar_gen"
    return base if repo else base + "_d"


def _load_data(repo_root):
    path = os.path.join(repo_root, "transcripts", "courses.json")
    with open(path, encoding="utf-8") as f:
        return json.load(f)


# ════════════════════════════════════════════════════════════════════════════════
#  draw.io generation
# ════════════════════════════════════════════════════════════════════════════════

_cid = [2]

def _nid():
    _cid[0] += 1
    return str(_cid[0])

def _cell(value, style, x, y, w, h):
    ev = html.escape(str(value), quote=True)
    return (
        f'<mxCell id="{_nid()}" value="{ev}" style="{style}" '
        f'vertex="1" parent="1">'
        f'<mxGeometry x="{x}" y="{y}" width="{w}" height="{h}" as="geometry"/>'
        f'</mxCell>'
    )

def _base():
    return f'fontColor={C["font"]};strokeColor={C["stroke"]};'

def _s_hdr(bg_key):
    return (f'text;html=1;align=center;verticalAlign=middle;fontSize=9;fontStyle=1;'
            f'{_base()}fillColor={C[bg_key]};')

def _s_lbl():
    return (f'text;html=1;align=left;verticalAlign=middle;fontSize=8;'
            f'{_base()}fillColor={C["lbl"]};spacingLeft=5;')

def _s_grid():
    return f'text;html=1;{_base()}fillColor={C["bg"]};'

def _s_grp(key):
    return (f'text;html=1;align=left;verticalAlign=middle;fontSize=9;fontStyle=1;'
            f'{_base()}fillColor={C[key]};spacingLeft=6;')

def _s_bar(key):
    return (f'rounded=1;whiteSpace=wrap;html=1;fillColor={C[key]};'
            f'strokeColor=#888888;fontColor={C["font"]};fontSize=8;fontStyle=1;'
            f'align=center;verticalAlign=middle;')


def generate_drawio(data):
    sems   = data["semesters"]
    groups = data["groups"]
    nc     = len(sems)

    total_rows = sum(len(g["courses"]) for g in groups)
    total_h = (BORDER + HEADER_H
               + len(groups) * GROUP_H
               + total_rows * ROW_H
               + BORDER)
    total_w = LX + LABEL_W + nc * COL_W + BORDER
    full_w  = LABEL_W + nc * COL_W

    _cid[0] = 2
    parts = ['<mxCell id="0"/>', '<mxCell id="1" parent="0"/>']
    y = BORDER

    # Header row
    parts.append(_cell("Course", _s_hdr("hdr"), LX, y, LABEL_W, HEADER_H))
    for i, sem in enumerate(sems):
        parts.append(_cell(sem, _s_hdr("hdr"), CX + i * COL_W, y, COL_W, HEADER_H))
    y += HEADER_H

    for grp in groups:
        label = f"{grp['abbr']} — {grp['full']}"
        parts.append(_cell(label, _s_grp(grp["color"]), LX, y, full_w, GROUP_H))
        y += GROUP_H

        for course in grp["courses"]:
            code  = course["code"]
            title = course["title"]
            col   = course["term"]
            bkey  = _bar_key(code, course["repo"], course.get("source", "umf"))

            parts.append(_cell(f"{code} — {title}", _s_lbl(), LX, y, LABEL_W, ROW_H))
            for i in range(nc):
                parts.append(_cell("", _s_grid(), CX + i * COL_W, y, COL_W, ROW_H))
            parts.append(_cell(code, _s_bar(bkey),
                               CX + col * COL_W + 4, y + 5,
                               COL_W - 8, ROW_H - 10))
            y += ROW_H

    body = "\n        ".join(parts)
    return f"""<?xml version="1.0" encoding="UTF-8"?>
<mxfile host="app.diagrams.net" modified="2026-04-26" scale="1" border="0">
  <diagram name="Course Timeline" id="umflint-course-timeline">
    <mxGraphModel dx="1500" dy="900" grid="0" gridSize="10" guides="1"
                  tooltips="1" connect="0" arrows="0" fold="0" page="0"
                  pageScale="1" pageWidth="{total_w + 60}" pageHeight="{total_h + 60}"
                  math="0" shadow="0">
      <root>
        {body}
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
"""


# ════════════════════════════════════════════════════════════════════════════════
#  PNG rendering (Pillow)
# ════════════════════════════════════════════════════════════════════════════════

def _s(v):
    return int(v * SCALE)

def _rgb(key):
    return hex2rgb(C[key])

def _load_fonts():
    sizes = {
        "hdr": _s(10),
        "grp": _s(10),
        "lbl": _s(9),
        "bar": _s(9),
        "sem": _s(9),
    }
    bold = {k: ImageFont.truetype(FONT_BOLD, v) for k, v in sizes.items()}
    reg  = {k: ImageFont.truetype(FONT_REG,  v) for k, v in sizes.items()}
    return bold, reg


def _draw_text_centered(draw, text, font, color, rect):
    x0, y0, x1, y1 = rect
    bb = draw.textbbox((0, 0), text, font=font)
    tw, th = bb[2] - bb[0], bb[3] - bb[1]
    tx = x0 + (x1 - x0 - tw) // 2
    ty = y0 + (y1 - y0 - th) // 2
    draw.text((tx, ty), text, font=font, fill=color)


def _draw_text_left(draw, text, font, color, rect, pad=6):
    x0, y0, x1, y1 = rect
    bb = draw.textbbox((0, 0), text, font=font)
    th = bb[3] - bb[1]
    ty = y0 + (y1 - y0 - th) // 2
    draw.text((x0 + _s(pad), ty), text, font=font, fill=color)


def _truncate(draw, text, font, max_px):
    if draw.textbbox((0, 0), text, font=font)[2] <= max_px:
        return text
    while text:
        candidate = text[:-1] + "…"
        if draw.textbbox((0, 0), candidate, font=font)[2] <= max_px:
            return candidate
        text = text[:-1]
    return "…"


def render_png(data):
    sems   = data["semesters"]
    groups = data["groups"]
    nc     = len(sems)

    total_rows = sum(len(g["courses"]) for g in groups)
    total_h = (BORDER + HEADER_H
               + len(groups) * GROUP_H
               + total_rows * ROW_H
               + BORDER)
    total_w = LX + LABEL_W + nc * COL_W + BORDER
    full_w  = LABEL_W + nc * COL_W

    bold, reg = _load_fonts()
    W = _s(total_w)
    H = _s(total_h)

    img  = Image.new("RGB", (W, H), hex2rgb(C["bg"]))
    draw = ImageDraw.Draw(img)
    stroke   = hex2rgb(C["stroke"])
    font_col = hex2rgb(C["font"])

    def rect(x, y, w, h, fill, outline=stroke):
        x0, y0, x1, y1 = _s(x), _s(y), _s(x + w), _s(y + h)
        draw.rectangle([x0, y0, x1 - 1, y1 - 1], fill=fill, outline=outline)

    def rnd_rect(x, y, w, h, fill, radius=4):
        x0, y0, x1, y1 = _s(x), _s(y), _s(x + w), _s(y + h)
        draw.rounded_rectangle([x0, y0, x1 - 1, y1 - 1],
                               radius=_s(radius), fill=fill, outline=stroke)

    y = BORDER

    # Header row
    rect(LX, y, LABEL_W, HEADER_H, hex2rgb(C["hdr"]))
    _draw_text_centered(draw, "Course", bold["hdr"], font_col,
                        (_s(LX), _s(y), _s(LX + LABEL_W), _s(y + HEADER_H)))
    for i, sem in enumerate(sems):
        sx = CX + i * COL_W
        rect(sx, y, COL_W, HEADER_H, hex2rgb(C["hdr"]))
        _draw_text_centered(draw, sem, bold["sem"], font_col,
                            (_s(sx), _s(y), _s(sx + COL_W), _s(y + HEADER_H)))
    y += HEADER_H

    for grp in groups:
        grp_fill = hex2rgb(C[grp["color"]])
        rect(LX, y, full_w, GROUP_H, grp_fill)
        grp_label = f"{grp['abbr']} — {grp['full']}"
        max_grp_w = _s(full_w) - _s(8)
        grp_label = _truncate(draw, grp_label, bold["grp"], max_grp_w)
        _draw_text_left(draw, grp_label, bold["grp"], font_col,
                        (_s(LX), _s(y), _s(LX + full_w), _s(y + GROUP_H)), pad=6)
        y += GROUP_H

        for course in grp["courses"]:
            code  = course["code"]
            title = course["title"]
            col   = course["term"]
            bkey  = _bar_key(code, course["repo"], course.get("source", "umf"))

            rect(LX, y, LABEL_W, ROW_H, hex2rgb(C["lbl"]))
            lbl_text = f"{code} — {title}"
            max_lbl_w = _s(LABEL_W) - _s(10)
            lbl_text = _truncate(draw, lbl_text, reg["lbl"], max_lbl_w)
            _draw_text_left(draw, lbl_text, reg["lbl"], font_col,
                            (_s(LX), _s(y), _s(LX + LABEL_W), _s(y + ROW_H)), pad=5)

            for i in range(nc):
                sx = CX + i * COL_W
                rect(sx, y, COL_W, ROW_H, hex2rgb(C["bg"]))

            bx = CX + col * COL_W + 4
            by = y + 5
            bw = COL_W - 8
            bh = ROW_H - 10
            rnd_rect(bx, by, bw, bh, hex2rgb(C[bkey]))
            _draw_text_centered(draw, code, bold["bar"], font_col,
                                (_s(bx), _s(by), _s(bx + bw), _s(by + bh)))
            y += ROW_H

    return img


# ── Entry point ───────────────────────────────────────────────────────────────
def main():
    repo_root = os.path.normpath(os.path.join(os.path.dirname(__file__), ".."))
    docs_dir  = os.path.join(repo_root, "docs")

    data = _load_data(repo_root)

    drawio_path = os.path.join(docs_dir, "course-timeline.drawio")
    png_path    = os.path.join(docs_dir, "course-timeline.png")

    xml = generate_drawio(data)
    with open(drawio_path, "w", encoding="utf-8") as f:
        f.write(xml)
    n_cells = xml.count("<mxCell")
    print(f"Written: {drawio_path}  ({n_cells} cells)")

    img = render_png(data)
    img.save(png_path, "PNG", optimize=True)
    print(f"Written: {png_path}  ({img.width}\xd7{img.height}px)")


if __name__ == "__main__":
    main()

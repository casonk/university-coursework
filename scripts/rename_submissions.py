"""
Rename all student submission files to konzer_cason_COURSE_type_N convention.
Also updates \\bibliography{} references inside .tex files whose .bib is being renamed.
"""

import os
import re
from pathlib import Path

BASE = str(Path(__file__).parent.parent)


def p(rel):
    return os.path.join(BASE, rel)


# (source_relative, dest_relative)
RENAMES = [
    # ── CIS517 ──────────────────────────────────────────────────────────────
    ("CIS517-Social_Computing/HW/AllTrails/AllTrails.pdf",
     "CIS517-Social_Computing/HW/AllTrails/konzer_cason_cis_517_assignment_1.pdf"),
    ("CIS517-Social_Computing/HW/AllTrails/AllTrails.tex",
     "CIS517-Social_Computing/HW/AllTrails/konzer_cason_cis_517_assignment_1.tex"),
    ("CIS517-Social_Computing/HW/SurroundingContext/SurroundingContext.pdf",
     "CIS517-Social_Computing/HW/SurroundingContext/konzer_cason_cis_517_assignment_5.pdf"),
    ("CIS517-Social_Computing/HW/SurroundingContext/SurroundingContext.tex",
     "CIS517-Social_Computing/HW/SurroundingContext/konzer_cason_cis_517_assignment_5.tex"),
    ("CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_CIS_517_assignment_6.pdf",
     "CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_cis_517_assignment_6.pdf"),
    ("CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_CIS_517_assignment_6.tex",
     "CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_cis_517_assignment_6.tex"),
    ("CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_CIS_517_assignment_6.bib",
     "CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_cis_517_assignment_6.bib"),

    # ── CIS562 ──────────────────────────────────────────────────────────────
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_CIS_562_assignment_3.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_cis_562_assignment_3.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_CIS_562_assignment_3.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_cis_562_assignment_3.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_CIS_562_assignment_3.bib",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_cis_562_assignment_3.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_5/konzer_cason_CIS_562_assignment_5.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_5/konzer_cason_cis_562_assignment_5.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_5/konzer_cason_CIS_562_assignment_5.doc",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_5/konzer_cason_cis_562_assignment_5.doc"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_1/konzer_cason_CIS_562_case_summary_1.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_1/konzer_cason_cis_562_case_summary_1.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_1/konzer_cason_CIS_562_case_summary_1.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_1/konzer_cason_cis_562_case_summary_1.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_2/konzer_cason_CIS_562_case_summary_2.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_2/konzer_cason_cis_562_case_summary_2.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_2/konzer_cason_CIS_562_case_summary_2.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_case_summary_2/konzer_cason_cis_562_case_summary_2.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_midterm_presentation/konzer_cason_CIS_562_midterm_presentation.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_midterm_presentation/konzer_cason_cis_562_midterm_presentation.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_midterm_presentation/konzer_cason_CIS_562_midterm_presentation.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_midterm_presentation/konzer_cason_cis_562_midterm_presentation.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_CIS_562_paper_summary_1.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_cis_562_paper_summary_1.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_CIS_562_paper_summary_1.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_cis_562_paper_summary_1.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_CIS_562_paper_summary_1.bib",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_cis_562_paper_summary_1.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_CIS_562_final_project.pdf",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_cis_562_final_project.pdf"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_CIS_562_final_project.tex",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_cis_562_final_project.tex"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_CIS_562_final_project.bib",
     "CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_cis_562_final_project.bib"),

    # ── CSC310 ──────────────────────────────────────────────────────────────
    ("CSC310-Human_Computer_Interaction/Project/P2 Deliverable.docx",
     "CSC310-Human_Computer_Interaction/Project/konzer_cason_csc_310_project_2.docx"),
    ("CSC310-Human_Computer_Interaction/Project/P6/Eval-Cason.pdf",
     "CSC310-Human_Computer_Interaction/Project/P6/konzer_cason_csc_310_project_6_eval.pdf"),
    ("CSC310-Human_Computer_Interaction/Project/P6/Final_Eval.docx",
     "CSC310-Human_Computer_Interaction/Project/P6/konzer_cason_csc_310_project_6_final_eval.docx"),
    ("CSC310-Human_Computer_Interaction/Project/P6/Heuristic Evaluation Report Cason.docx",
     "CSC310-Human_Computer_Interaction/Project/P6/konzer_cason_csc_310_project_6_heuristic_eval.docx"),
    ("CSC310-Human_Computer_Interaction/Project/P7/FH-Revisions.docx",
     "CSC310-Human_Computer_Interaction/Project/P7/konzer_cason_csc_310_project_7.docx"),

    # ── CSC335 ──────────────────────────────────────────────────────────────
    ("CSC335-Computer_Networks/HW/HW7/ck_hw7-Part_II.pdf",
     "CSC335-Computer_Networks/HW/HW7/konzer_cason_csc_335_hw_7_part_2.pdf"),

    # ── CSC382 ──────────────────────────────────────────────────────────────
    *[(f"CSC382-Software_Engineering/HW/HW{n}/Konzer.swe.hw{n}.{ext}",
       f"CSC382-Software_Engineering/HW/HW{n}/konzer_cason_csc_382_hw_{n}.{ext}")
      for n in range(1, 6) for ext in ("pdf", "docx")],
    ("CSC382-Software_Engineering/Final/Konzer.swe.final.pdf",
     "CSC382-Software_Engineering/Final/konzer_cason_csc_382_final.pdf"),
    ("CSC382-Software_Engineering/Final/Konzer.swe.final.docx",
     "CSC382-Software_Engineering/Final/konzer_cason_csc_382_final.docx"),

    # ── CSC384 ──────────────────────────────────────────────────────────────
    ("CSC384-Database_Design/HW/CK-HW1.pdf",       "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_1.pdf"),
    ("CSC384-Database_Design/HW/CK-HW2.pdf",       "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_2.pdf"),
    ("CSC384-Database_Design/HW/CK-HW 3.pdf",      "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_3.pdf"),
    ("CSC384-Database_Design/HW/CK-HW4.pdf",       "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_4.pdf"),
    ("CSC384-Database_Design/HW/CK-hw4Problem.docx","CSC384-Database_Design/HW/konzer_cason_csc_384_hw_4_problem.docx"),
    ("CSC384-Database_Design/HW/CK-HW5.pdf",       "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_5.pdf"),
    ("CSC384-Database_Design/HW/CK-HW6.pdf",       "CSC384-Database_Design/HW/konzer_cason_csc_384_hw_6.pdf"),
    ("CSC384-Database_Design/Project/Project.sql",  "CSC384-Database_Design/Project/konzer_cason_csc_384_project.sql"),

    # ── CSC487 ──────────────────────────────────────────────────────────────
    *[(f"CSC487-Data_Mining/HW/HW{n}/HW{n}.pdf",
       f"CSC487-Data_Mining/HW/HW{n}/konzer_cason_csc_487_hw_{n}.pdf")
      for n in range(1, 6)],
    ("CSC487-Data_Mining/Midterm/Midterm.pdf",
     "CSC487-Data_Mining/Midterm/konzer_cason_csc_487_exam_midterm.pdf"),
    ("CSC487-Data_Mining/Final_Paper.pdf",
     "CSC487-Data_Mining/konzer_cason_csc_487_paper_final.pdf"),

    # ── CSC535 ──────────────────────────────────────────────────────────────
    ("CSC535-Advanced_Computer_Networking/Presentations/Konzer-Cason-535-PTP-presentation.pdf",
     "CSC535-Advanced_Computer_Networking/Presentations/konzer_cason_csc_535_presentation_1.pdf"),

    # ── CSC565 (only Deliverable_2 needs renaming; report/summaries already correct) ──
    ("CSC565-Computer_System_Architecture/Project/Deliverable_2.pdf",
     "CSC565-Computer_System_Architecture/Project/konzer_cason_csc_565_project_deliverable_2.pdf"),
    ("CSC565-Computer_System_Architecture/Project/Deliverable_2.docx",
     "CSC565-Computer_System_Architecture/Project/konzer_cason_csc_565_project_deliverable_2.docx"),

    # ── CSC580 ──────────────────────────────────────────────────────────────
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO1/BO1.pdf",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO1/konzer_cason_csc_580_bo_1.pdf"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO1/BO1.xlsx",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO1/konzer_cason_csc_580_bo_1.xlsx"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO2/BO2 - PointofSaleOperations.pdf",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO2/konzer_cason_csc_580_bo_2.pdf"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO2/BO2 - PointofSaleOperations.docx",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO2/konzer_cason_csc_580_bo_2.docx"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO2/breakout_2-cleaned.png",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO2/konzer_cason_csc_580_bo_2_diagram_cleaned.png"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO2/breakout_2-og.png",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO2/konzer_cason_csc_580_bo_2_diagram_og.png"),
    ("CSC580-Advanced_Software_Engineering/HW/BO/BO2/breakout_2-ksan-revision.png",
     "CSC580-Advanced_Software_Engineering/HW/BO/BO2/konzer_cason_csc_580_bo_2_diagram_revision.png"),
    ("CSC580-Advanced_Software_Engineering/HW/PM/PM1/Group1-PM1.pdf",
     "CSC580-Advanced_Software_Engineering/HW/PM/PM1/konzer_cason_csc_580_pm_1.pdf"),
    ("CSC580-Advanced_Software_Engineering/HW/PM/PM1/Group1-PM1.docx",
     "CSC580-Advanced_Software_Engineering/HW/PM/PM1/konzer_cason_csc_580_pm_1.docx"),
    ("CSC580-Advanced_Software_Engineering/HW/PM/PM1/Group1-PM1-old.pdf",
     "CSC580-Advanced_Software_Engineering/HW/PM/PM1/konzer_cason_csc_580_pm_1_old.pdf"),
    *[(f"CSC580-Advanced_Software_Engineering/HW/PM/PM{n}/Group1-PM{n}.docx",
       f"CSC580-Advanced_Software_Engineering/HW/PM/PM{n}/konzer_cason_csc_580_pm_{n}.docx")
      for n in range(2, 8)],

    # ── ECN360 ──────────────────────────────────────────────────────────────
    *[(f"ECN360-International_Economics/HW/ME/HW{n}.pdf",
       f"ECN360-International_Economics/HW/ME/konzer_cason_ecn_360_hw_{n}.pdf")
      for n in range(1, 8)],

    # ── ECN370 ──────────────────────────────────────────────────────────────
    *[(f"ECN370-Public_Finance/HW/HW{n}.pdf",
       f"ECN370-Public_Finance/HW/konzer_cason_ecn_370_hw_{n}.pdf")
      for n in range(1, 7)],

    # ── ECN480 ──────────────────────────────────────────────────────────────
    *[(f"ECN480-Quantitative_Methods_for_Public_Administration/HW/HW{n}/HW{n}.pdf",
       f"ECN480-Quantitative_Methods_for_Public_Administration/HW/HW{n}/konzer_cason_ecn_480_hw_{n}.pdf")
      for n in range(1, 7)],

    # ── INB385 ──────────────────────────────────────────────────────────────
    ("INB385-International_Business/project.pdf",
     "INB385-International_Business/konzer_cason_inb_385_project.pdf"),
    ("INB385-International_Business/project.tex",
     "INB385-International_Business/konzer_cason_inb_385_project.tex"),
    ("INB385-International_Business/project.bib",
     "INB385-International_Business/konzer_cason_inb_385_project.bib"),

    # ── MTH200 ──────────────────────────────────────────────────────────────
    ("MTH200-Proofs_and_Structures/HW/CK-HW 3.pdf",    "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_3.pdf"),
    ("MTH200-Proofs_and_Structures/HW/CK-HW 4 .pdf",   "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_4.pdf"),
    ("MTH200-Proofs_and_Structures/HW/CK-HW 5.pdf",    "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_5.pdf"),
    ("MTH200-Proofs_and_Structures/HW/CK - HW 6.pdf",  "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_6.pdf"),
    ("MTH200-Proofs_and_Structures/HW/CK-HW 7.pdf",    "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_7.pdf"),
    ("MTH200-Proofs_and_Structures/HW/CK-HW 8.pdf",    "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_hw_8.pdf"),
    ("MTH200-Proofs_and_Structures/HW/WS 3 Tautologies.pdf",
     "MTH200-Proofs_and_Structures/HW/konzer_cason_mth_200_worksheet_3.pdf"),
    ("MTH200-Proofs_and_Structures/Exam/CK-Exam 1.pdf",
     "MTH200-Proofs_and_Structures/Exam/konzer_cason_mth_200_exam_1.pdf"),
    ("MTH200-Proofs_and_Structures/Exam/Final Exam.pdf",
     "MTH200-Proofs_and_Structures/Exam/konzer_cason_mth_200_exam_final.pdf"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/Betweenness.pdf",
     "MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/konzer_cason_mth_200_paper_1.pdf"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/Betweenness.tex",
     "MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/konzer_cason_mth_200_paper_1.tex"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/CK-Watkins on Latin Square Puzzles.pdf",
     "MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/konzer_cason_mth_200_paper_review_1.pdf"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/CK-Watkins on Latin Square Puzzles.docx",
     "MTH200-Proofs_and_Structures/Short_Papers/Betweenness Research/konzer_cason_mth_200_paper_review_1.docx"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Ripple Research/CK- Ripple Labs & Byzantine Consensus.pdf",
     "MTH200-Proofs_and_Structures/Short_Papers/Ripple Research/konzer_cason_mth_200_paper_2.pdf"),
    ("MTH200-Proofs_and_Structures/Short_Papers/Ripple Research/CK- Ripple Labs & Byzantine Consensus.docx",
     "MTH200-Proofs_and_Structures/Short_Papers/Ripple Research/konzer_cason_mth_200_paper_2.docx"),

    # ── MTH357 ──────────────────────────────────────────────────────────────
    *[(f"MTH357-Advanced_Calculus/WW_COMPLETE/202210-MTH357-01.casonk.hw{n}.pdf",
       f"MTH357-Advanced_Calculus/WW_COMPLETE/konzer_cason_mth_357_ww_hw_{n}.pdf")
      for n in range(1, 5)],
    ("MTH357-Advanced_Calculus/TEX/HW2/tex_hw_2.pdf",  "MTH357-Advanced_Calculus/TEX/HW2/konzer_cason_mth_357_hw_2.pdf"),
    ("MTH357-Advanced_Calculus/TEX/HW2/tex_hw_2.tex",  "MTH357-Advanced_Calculus/TEX/HW2/konzer_cason_mth_357_hw_2.tex"),
    *[(f"MTH357-Advanced_Calculus/TEX/HW{n}/tex_hw{n}.pdf",
       f"MTH357-Advanced_Calculus/TEX/HW{n}/konzer_cason_mth_357_hw_{n}.pdf")
      for n in range(3, 10)],
    *[(f"MTH357-Advanced_Calculus/TEX/HW{n}/tex_hw{n}.tex",
       f"MTH357-Advanced_Calculus/TEX/HW{n}/konzer_cason_mth_357_hw_{n}.tex")
      for n in range(3, 10)],
    ("MTH357-Advanced_Calculus/JUYP/WHW1/jup_hw_1.pdf",
     "MTH357-Advanced_Calculus/JUYP/WHW1/konzer_cason_mth_357_jup_hw_1.pdf"),
    ("MTH357-Advanced_Calculus/JUYP/WHW2/jup_hw_2.pdf",
     "MTH357-Advanced_Calculus/JUYP/WHW2/konzer_cason_mth_357_jup_hw_2.pdf"),
    ("MTH357-Advanced_Calculus/Final/TEX/tex_final.pdf",
     "MTH357-Advanced_Calculus/Final/TEX/konzer_cason_mth_357_final.pdf"),
    ("MTH357-Advanced_Calculus/Final/TEX/tex_final.tex",
     "MTH357-Advanced_Calculus/Final/TEX/konzer_cason_mth_357_final.tex"),

    # ── MTH372 ──────────────────────────────────────────────────────────────
    *[(f"MTH372-Advanced_Probability/HW/ME/HW{n}.pdf",
       f"MTH372-Advanced_Probability/HW/ME/konzer_cason_mth_372_hw_{n}.pdf")
      for n in range(1, 12)],
    ("MTH372-Advanced_Probability/Exam/Exam1_Cason-Konzer.pdf",
     "MTH372-Advanced_Probability/Exam/konzer_cason_mth_372_exam_1.pdf"),

    # ── MTH374 ──────────────────────────────────────────────────────────────
    *[(f"MTH374-Numerical_Analysis/HW/HW{n}.pdf",
       f"MTH374-Numerical_Analysis/HW/konzer_cason_mth_374_hw_{n}.pdf")
      for n in range(1, 8)],

    # ── MTH375 ──────────────────────────────────────────────────────────────
    *[(f"MTH375-Mathematical_Statistics/HW/ME/HW{n}/HW{n}.pdf",
       f"MTH375-Mathematical_Statistics/HW/ME/HW{n}/konzer_cason_mth_375_hw_{n}.pdf")
      for n in range(1, 11)],
    ("MTH375-Mathematical_Statistics/Exam/MIDTERM/EX1.pdf",
     "MTH375-Mathematical_Statistics/Exam/MIDTERM/konzer_cason_mth_375_exam_midterm.pdf"),
    ("MTH375-Mathematical_Statistics/Exam/FINAL/FINAL.pdf",
     "MTH375-Mathematical_Statistics/Exam/FINAL/konzer_cason_mth_375_exam_final.pdf"),

    # ── MTH385 ──────────────────────────────────────────────────────────────
    *[(f"MTH385-History_of_Mathematics/HW/HW{n}/ME/{date}_homework.pdf",
       f"MTH385-History_of_Mathematics/HW/HW{n}/ME/konzer_cason_mth_385_hw_{n}.pdf")
      for n, date in enumerate([
          "2022-01-17", "2022-01-31", "2022-02-07", "2022-02-07",
          "2022-02-21", "2022-03-07", "2022-03-14", "2022-03-21",
          "2022-03-28", "2022-04-04", "2022-04-11", "2022-04-18",
      ], start=1)],
    *[(f"MTH385-History_of_Mathematics/HW/HW{n}/ME/{date}_homework.tex",
       f"MTH385-History_of_Mathematics/HW/HW{n}/ME/konzer_cason_mth_385_hw_{n}.tex")
      for n, date in enumerate([
          "2022-01-17", "2022-01-31", "2022-02-07", "2022-02-07",
          "2022-02-21", "2022-03-07", "2022-03-14", "2022-03-21",
          "2022-03-28", "2022-04-04", "2022-04-11", "2022-04-18",
      ], start=1)],
    # LMS receipts
    *[(f"MTH385-History_of_Mathematics/HW/HW{n}/ME/{receipt}",
       f"MTH385-History_of_Mathematics/HW/HW{n}/ME/konzer_cason_mth_385_hw_{n}_receipt.pdf")
      for n, receipt in enumerate([
          "konzercason_2112_2887532_2022-01-17_homework.pdf",
          "konzercason_2112_2925723_2022-01-31_homework.pdf",
          "konzercason_2112_2944086_2022-02-07_homework.pdf",
          "konzercason_2112_2953727_2022-02-07_homework-1.pdf",
          "konzercason_2112_2961839_2022-02-21_homework.pdf",
          "konzercason_2112_2982152_2022-03-07_homework.pdf",
          "konzercason_2112_2990549_2022-03-14_homework.pdf",
          "konzercason_2112_3000502_2022-03-21_homework.pdf",
          "konzercason_2112_3008827_2022-03-28_homework.pdf",
          "konzercason_2112_3022031_2022-04-04_homework.pdf",
          "konzercason_2112_3030305_2022-04-11_homework.pdf",
      ], start=1)],
    ("MTH385-History_of_Mathematics/Final/ME/MTH385_final.pdf",
     "MTH385-History_of_Mathematics/Final/ME/konzer_cason_mth_385_final.pdf"),
    ("MTH385-History_of_Mathematics/Final/ME/MTH385_final.tex",
     "MTH385-History_of_Mathematics/Final/ME/konzer_cason_mth_385_final.tex"),

    # ── MTH402 ──────────────────────────────────────────────────────────────
    ("MTH402-Mathematics_Capstone/Deliverables/draftfinal/draftfinal.pdf",
     "MTH402-Mathematics_Capstone/Deliverables/draftfinal/konzer_cason_mth_402_paper_draft.pdf"),
    ("MTH402-Mathematics_Capstone/Deliverables/draftfinal/draftfinal.tex",
     "MTH402-Mathematics_Capstone/Deliverables/draftfinal/konzer_cason_mth_402_paper_draft.tex"),
    ("MTH402-Mathematics_Capstone/Deliverables/draftfinal/draftfinal.bib",
     "MTH402-Mathematics_Capstone/Deliverables/draftfinal/konzer_cason_mth_402_paper_draft.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/onepager/onepager.pdf",
     "MTH402-Mathematics_Capstone/Deliverables/onepager/konzer_cason_mth_402_paper_1.pdf"),
    ("MTH402-Mathematics_Capstone/Deliverables/onepager/onepager.tex",
     "MTH402-Mathematics_Capstone/Deliverables/onepager/konzer_cason_mth_402_paper_1.tex"),
    ("MTH402-Mathematics_Capstone/Deliverables/onepager/onepager.bib",
     "MTH402-Mathematics_Capstone/Deliverables/onepager/konzer_cason_mth_402_paper_1.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/multipager/multipager.pdf",
     "MTH402-Mathematics_Capstone/Deliverables/multipager/konzer_cason_mth_402_paper_2.pdf"),
    ("MTH402-Mathematics_Capstone/Deliverables/multipager/multipager.tex",
     "MTH402-Mathematics_Capstone/Deliverables/multipager/konzer_cason_mth_402_paper_2.tex"),
    ("MTH402-Mathematics_Capstone/Deliverables/multipager/multipager.bib",
     "MTH402-Mathematics_Capstone/Deliverables/multipager/konzer_cason_mth_402_paper_2.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_paper/final_paper.pdf",
     "MTH402-Mathematics_Capstone/Deliverables/final_paper/konzer_cason_mth_402_paper_final.pdf"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_paper/final_paper.tex",
     "MTH402-Mathematics_Capstone/Deliverables/final_paper/konzer_cason_mth_402_paper_final.tex"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_paper/final_paper.bib",
     "MTH402-Mathematics_Capstone/Deliverables/final_paper/konzer_cason_mth_402_paper_final.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_slides/final_slides.pdf",
     "MTH402-Mathematics_Capstone/Deliverables/final_slides/konzer_cason_mth_402_presentation_final.pdf"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_slides/final_slides.tex",
     "MTH402-Mathematics_Capstone/Deliverables/final_slides/konzer_cason_mth_402_presentation_final.tex"),

    # ── MTH470 ──────────────────────────────────────────────────────────────
    ("MTH470-Theory_of_Functions_of_a_Complex_Variable/HW/CK-HW2.pdf",
     "MTH470-Theory_of_Functions_of_a_Complex_Variable/HW/konzer_cason_mth_470_hw_2.pdf"),
    *[(f"MTH470-Theory_of_Functions_of_a_Complex_Variable/HW/CK-HW {n}.pdf",
       f"MTH470-Theory_of_Functions_of_a_Complex_Variable/HW/konzer_cason_mth_470_hw_{n}.pdf")
      for n in range(3, 9)],
    ("MTH470-Theory_of_Functions_of_a_Complex_Variable/Exam/CK-EXAM 1.pdf",
     "MTH470-Theory_of_Functions_of_a_Complex_Variable/Exam/konzer_cason_mth_470_exam_1.pdf"),
    ("MTH470-Theory_of_Functions_of_a_Complex_Variable/PROJECT_MAPPING/Complex Mapping.pdf",
     "MTH470-Theory_of_Functions_of_a_Complex_Variable/PROJECT_MAPPING/konzer_cason_mth_470_project_mapping.pdf"),
    ("MTH470-Theory_of_Functions_of_a_Complex_Variable/PROJECT_MAPPING/Complex Mapping.tex",
     "MTH470-Theory_of_Functions_of_a_Complex_Variable/PROJECT_MAPPING/konzer_cason_mth_470_project_mapping.tex"),
]

# Bibliography references to update: (tex_source_rel, old_bib_ref, new_bib_ref)
# Edit the .tex file content BEFORE renaming it.
BIB_UPDATES = [
    ("CIS517-Social_Computing/HW/InternetAuctionHouse/konzer_cason_CIS_517_assignment_6.tex",
     "konzer_cason_CIS_517_assignment_6.bib", "konzer_cason_cis_517_assignment_6.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_assignment_3/konzer_cason_CIS_562_assignment_3.tex",
     "konzer_cason_CIS_562_assignment_3.bib", "konzer_cason_cis_562_assignment_3.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_paper_summary_1/konzer_cason_CIS_562_paper_summary_1.tex",
     "konzer_cason_CIS_562_paper_summary_1.bib", "konzer_cason_cis_562_paper_summary_1.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/Paper/konzer_cason_CIS_562_final_project.tex",
     "konzer_cason_CIS_562_final_project.bib", "konzer_cason_cis_562_final_project.bib"),
    ("CIS562-Enterprise_Computing_and_Systems_Integration/HW/konzer_cason_CIS_562_midterm_presentation/konzer_cason_CIS_562_midterm_presentation.tex",
     "konzer_cason_CIS_562_midterm_presentation.bib", "konzer_cason_cis_562_midterm_presentation.bib"),
    ("INB385-International_Business/project.tex",
     "project.bib", "konzer_cason_inb_385_project.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/draftfinal/draftfinal.tex",
     "draftfinal.bib", "konzer_cason_mth_402_paper_draft.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/onepager/onepager.tex",
     "onepager.bib", "konzer_cason_mth_402_paper_1.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/multipager/multipager.tex",
     "multipager.bib", "konzer_cason_mth_402_paper_2.bib"),
    ("MTH402-Mathematics_Capstone/Deliverables/final_paper/final_paper.tex",
     "final_paper.bib", "konzer_cason_mth_402_paper_final.bib"),
]


def main():
    renamed = skipped = updated_bibs = 0

    # Step 1: update bibliography references in .tex files before renaming
    for rel_tex, old_ref, new_ref in BIB_UPDATES:
        tex_path = p(rel_tex)
        if not os.path.exists(tex_path):
            print(f"  BIB SKIP (no file): {rel_tex}")
            continue
        content = open(tex_path, encoding="utf-8").read()
        if old_ref in content:
            open(tex_path, "w", encoding="utf-8").write(content.replace(old_ref, new_ref))
            print(f"  BIB updated: {os.path.basename(rel_tex)}  {old_ref} → {new_ref}")
            updated_bibs += 1

    # Step 2: rename files
    for src_rel, dst_rel in RENAMES:
        src = p(src_rel)
        dst = p(dst_rel)
        if not os.path.exists(src):
            print(f"  SKIP (no file): {src_rel}")
            skipped += 1
            continue
        if src == dst:
            continue
        os.rename(src, dst)
        print(f"  RENAME: {os.path.basename(src_rel)} → {os.path.basename(dst_rel)}")
        renamed += 1

    print(f"\nDone. {renamed} renamed, {skipped} skipped, {updated_bibs} bib refs updated.")


if __name__ == "__main__":
    main()

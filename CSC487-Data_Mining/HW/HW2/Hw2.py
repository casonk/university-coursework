import pandas as pd
import numpy as np

# 1-30-2022 , Name: Cason Konzer

# 1 ---------------------------------------------------------------------------

# Build the dataframe.
table1 = {
  "Object Identifier": [1,2,3,4],
  "test-1 (nominal)" : ["A","B","C","A"],
  "test-2 (ordinal)" : ["excellent","fair","good","excellent"],
  "test-3 (numeric)" : [45,22,64,28]
  }
  
df1 = pd.DataFrame(table1)

# Set the index.
df1.set_index("Object Identifier",inplace=True)
df1

# Replace nominal values.
df1["test-1 (nominal)"].replace("A",3,inplace=True)
df1["test-1 (nominal)"].replace("B",2,inplace=True)
df1["test-1 (nominal)"].replace("C",1,inplace=True)

t1_range = (df1["test-1 (nominal)"].max()-df1["test-1 (nominal)"].min())
df1["test-1 (nominal)"] = (df1["test-1 (nominal)"]-1)/t1_range
df1

# Replace ordinal values.
df1["test-2 (ordinal)"].replace("excellent",3,inplace=True)
df1["test-2 (ordinal)"].replace("good",2,inplace=True)
df1["test-2 (ordinal)"].replace("fair",1,inplace=True)

t2_range = (df1["test-2 (ordinal)"].max()-df1["test-2 (ordinal)"].min())
df1["test-2 (ordinal)"] = (df1["test-2 (ordinal)"]-1)/t2_range
df1

# Replace numeric values.
t3_range = (df1["test-3 (numeric)"].max()-df1["test-3 (numeric)"].min())
df1["test-3 (numeric)"] = (
  df1["test-3 (numeric)"]-df1["test-3 (numeric)"].min()
  )/t3_range
df1

# Define our distance function.
def dist(i,j, df):
  neum = 0
  denom = 0
  for col in df.columns:
    print(col)
    if 'nominal' in col:
      if df[col].iloc[j-1] != df[col].iloc[i-1]:
        dist = 1
      else:
        dist = 0
    else:
      dist = np.abs(df[col].iloc[j-1] - df[col].iloc[i-1])
    print('feature distance:',dist)
    neum += dist
    denom += 1
    print()
  print('numerator:',neum)
  print('denomenator:',denom)
  print('\ntotal distance:')
  return neum/denom
  
# Compute the distance between object 1 & 3
d_1_3 = dist(1,3, df1)

# 2 ---------------------------------------------------------------------------

# Create test vector 1.
test_v1 = np.array([0,1,2,3,5,4])
test_v1

# Create test vector 2.
test_v2 = np.array([1,0,3,2,4,6])
test_v2

# Build our Manhattan Function
def manhattaan(v1,v2):
  return np.sum(np.abs(v2-v1))

# Test our Manhattan Function
manhattaan(test_v1,test_v2)

# Build our Euclidean function.
def euclidian(v1,v2):
  return np.sqrt(np.sum(np.square(v2-v1)))

# Test our Euclidean function.
euclidian(test_v1,test_v2)

# 3 ---------------------------------------------------------------------------

# Build the dataframe.
table2 = {
  ""     : ["Attended","Skipped","Total"],
  "Pass" : [25,8,33],
  "Fail" : [6,15,21]
  }
  
df2 = pd.DataFrame(table2)
df2

# Total on attendance status.
df2["Total"] = df2["Pass"] + df2["Fail"]
df2

# Create an expectation dataframe as a copy of the original.
expectation_df2 = df2.copy()
expectation_df2

# Compute probabilities on attendance status 
expectation_df2["Total"] = expectation_df2["Total"].apply(
  lambda x: x / expectation_df2["Total"].max()
  )
expectation_df2

# Compute passing expectations.
expectation_df2["Pass"] = (
  expectation_df2["Pass"].max()*expectation_df2["Total"])
expectation_df2

# Compute failing expectations
expectation_df2["Fail"] = (
  expectation_df2["Fail"].max()*expectation_df2["Total"])
expectation_df2

# Trim our original dataframe.
df2 = df2.iloc[:-1,:-1]
df2

# Trim our expectation dataframe
expectation_df2 = expectation_df2.iloc[:-1,:-1]
expectation_df2

# Compute passing portion of chi squared.
pass_ = np.sum(
  np.square(
    (df2["Pass"] - expectation_df2["Pass"])
    )/expectation_df2["Pass"]
  )
pass_

# Compute failing portion of chi square.
fail_ = np.sum(
  np.square(
    (df2["Fail"] - expectation_df2["Fail"])
    )/expectation_df2["Fail"]
  )
fail_

# Sum for our chi squared value.
chi_squared_ = pass_ + fail_
chi_squared_
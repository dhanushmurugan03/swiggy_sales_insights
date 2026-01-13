# step 1: data exploration

import pandas as pd
import pymysql
from sqlalchemy import create_engine
from urllib.parse import quote_plus

# read csv
df = pd.read_csv("swiggy.csv", encoding_errors="ignore")

print(df.shape)
print(df.head())
print(df.describe())

# step 2: data cleaning
# to find the duplicated values
print(df.duplicated().sum())
print(df.isnull().sum())

'''
# if duplicates exist way to remove them
df.drop_duplicates(inplace=True)
print(df.duplicated().sum())
'''

print(df.columns)

# MySQL connection details
host = "localhost"
port = 3306
user = "root"
password = quote_plus("69dan@69")   
database = "swiggy_db"

# create engine
engine = create_engine(
    f"mysql+pymysql://{user}:{password}@{host}:{port}/{database}"
)

# insert dataframe into MySQL
df.to_sql(
    name="swiggy_data",
    con=engine,
    if_exists="replace",
    index=False
)

print("Data successfully inserted into MySQL")

print(df.shape)

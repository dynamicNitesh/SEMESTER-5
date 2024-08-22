import pandas as n

#print particular column
# df=n.read_csv("data.csv")

#display particular column
# df=n.read_csv("data.csv",header=0,usecols=["Duration","Pulse","Calories"])

#print first 5 data and 5 last data
# print(df)

#print whole data
# print(df.to_string())

#print specific index
# print(df.loc[5])

#print data through user
# index = int(input("ENTER AN INDEX NO:"))
# print(df.loc[index])

#print data 0 to 17 index
# print(df.loc[[0,17]])

#display only given index
# print(df.loc[0:6])


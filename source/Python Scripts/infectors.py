import numpy as np
import pandas as pd
import pandas.io.sql as sqlio
import matplotlib.pyplot as plt
import seaborn as sns
import psycopg2
import copy

###################################################################################
#Importing data from Postgresql

conn = psycopg2.connect(
    host='localhost',
    database='sk_covid',
    user='postgres',
    password='opened')

infect_query = "SELECT * FROM infector_info"
infectors = sqlio.read_sql_query(infect_query,conn)

###################################################################################
#Scikit Learn Model Fitting

train = pd.DataFrame(infectors[['patient_id','sex',
'age','province','no_infected']])
train.dropna(inplace=True)
train.info()

sex = pd.get_dummies(train['sex'],drop_first=True)
age = pd.get_dummies(train['age'],drop_first=True)
province = pd.get_dummies(train['province'],drop_first=True)

train.drop(['sex','age','province'],axis=1,inplace=True)
train = pd.concat([train,sex,age,province],axis=1)

from sklearn.model_selection import train_test_split
X = train.drop(['patient_id','no_infected'],axis=1)
Y = train['no_infected']

X_train, X_test, Y_train, Y_test = train_test_split(X,Y,test_size=0.4)

from sklearn.linear_model import LogisticRegression
model = LogisticRegression()
model.fit(X_train,Y_train)

predictions = model.predict(X_test)

###################################################################################
#Model Evaluation

from sklearn.metrics import classification_report

print(classification_report(Y_test,predictions))

###################################################################################
#Seaborn Plots

sns.set_style('darkgrid')
fig, axs = plt.subplots(nrows=2)

sns.countplot(data=infectors,x='age',
order=['0s','10s','20s','30s','40s','50s','60s','70s','80s','90s'],ax=axs[0])
sns.violinplot(data=infectors,x='age',y='no_infected',hue='sex',split=True, inner=None,
order=['0s','10s','20s','30s','40s','50s','60s','70s','80s','90s'],ax=axs[1])

plt.show()
import numpy as np
import pandas as pd
import pandas.io.sql as sqlio
import matplotlib.pyplot as plt
import seaborn as sns
import psycopg2

###################################################################################
#Importing Data from Postgresql

conn = psycopg2.connect(
    host='localhost',
    database='sk_covid',
    user='postgres',
    password='opened')

search_query = "SELECT * FROM weather_search"
searches = sqlio.read_sql_query(search_query,conn)

###################################################################################
#Scikit Learn Model Fitting



###################################################################################
#Seaborn Plots

sns.set_style('darkgrid')
fig, axs = plt.subplots(nrows=2)

sns.distplot(searches['avg_temp'],ax=axs[0])
sns.lineplot(data=searches,x='avg_temp',y='cold',label='Cold',color='b',ax=axs[1])
sns.lineplot(data=searches,x='avg_temp',y='flu',Label='Flu',color='r',ax=axs[1])
sns.lineplot(data=searches,x='avg_temp',y='pneumonia',label='Pneumonia',color='g',ax=axs[1])
plt.legend()

plt.show()
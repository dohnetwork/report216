#!/usr/local/bin/python
#-*- coding: utf-8 -*-
import MySQLdb as mdb
con = mdb.connect("172.16.1.212", "root", "camel","report" , use_unicode=True, charset="UTF8")
cur = con.cursor()
#cur.execute("UPDATE month set A = 'itsared'")
#cur.execute("INSERT INTO month (A)VALUES ('Cardinal')")

cur.execute("delete from month")
#INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)VALUES ('Cardinal','Tom B. Erichsen','Skagen 21','Stavanger','4006','Norway');
#con.close()


f1 = open('/report/check1.txt', 'r+')
for line in f1:
	sumT1 = line.strip().split(" ")
	if (sumT1[0] == "Wed" or sumT1[0] == "Mon" or sumT1[0] == "Thu" or sumT1[0] == "Fri" or sumT1[0] == "Tue") and sumT1[5] == "2017":
            #cur.execute("INSERT INTO month (A)VALUES ('"+str(sumT[0])+"')")
            #cur.execute("INSERT INTO month (A,B)VALUES ('"+str(sumT[0])+"','"+str(sumT[1])+"')")
            #cur.execute("INSERT INTO month (A,B,C)VALUES ('"+str(sumT[0])+"','"+str(sumT[1])+"','"+str(sumT[2])+"')")
            cur.execute("INSERT INTO month (SERVER,A,B,C,D,E)VALUES ('172.16.1.1','"+str(sumT1[0])+"','"+str(sumT1[1])+"','"+str(sumT1[2])+"','"+str(sumT1[3])+"','"+str(sumT1[5])+"')")
            #cur.execute("INSERT INTO month (A) VALUES ('k')")
            #cur.execute("INSERT INTO month (A) VALUES('kong')")
            #op_list.sendMessage("%s"% (row[3])+"   "+str(row[4]))
            #print sumT[2]+sumT[5]
f1.close()

f2 = open('/report/check2.txt', 'r+')
for line in f2:
        sumT2 = line.strip().split(" ")
        if (sumT2[0] == "Wed" or sumT2[0] == "Mon" or sumT2[0] == "Thu" or sumT2[0] == "Fri" or sumT2[0] == "Tue") and sumT2[5] == "2017":
            cur.execute("INSERT INTO month (SERVER,A,B,C,D,E)VALUES ('172.16.1.2','"+str(sumT2[0])+"','"+str(sumT2[1])+"','"+str(sumT2[2])+"','"+str(sumT2[3])+"','"+str(sumT2[5])+"')")
f2.close()



f3 = open('/report/check3.txt', 'r+')
for line in f3:
        sumT3 = line.strip().split(" ")
        if (sumT3[0] == "Wed" or sumT3[0] == "Mon" or sumT3[0] == "Thu" or sumT3[0] == "Fri" or sumT3[0] == "Tue") and sumT3[5] == "2017":
            cur.execute("INSERT INTO month (SERVER,A,B,C,D,E)VALUES ('172.16.1.3','"+str(sumT3[0])+"','"+str(sumT3[1])+"','"+str(sumT3[2])+"','"+str(sumT3[3])+"','"+str(sumT3[5])+"')")
f3.close()

f5 = open('/report/check5.txt', 'r+')
for line in f5:
        sumT5 = line.strip().split(" ")
        if (sumT5[0] == "Wed" or sumT5[0] == "Mon" or sumT5[0] == "Thu" or sumT5[0] == "Fri" or sumT5[0] == "Tue") and sumT5[5] == "2017":
            cur.execute("INSERT INTO month (SERVER,A,B,C,D,E)VALUES ('172.16.1.5','"+str(sumT5[0])+"','"+str(sumT5[1])+"','"+str(sumT5[2])+"','"+str(sumT5[3])+"','"+str(sumT5[5])+"')")
f5.close()

f6 = open('/report/check203.txt', 'r+')
for line in f6:
        sumT = line.strip().split(" ")
        if (sumT[0] == "Wed" or sumT[0] == "Mon" or sumT[0] == "Thu" or sumT[0] == "Fri" or sumT[0] == "Tue") and sumT[5] == "2017":
            cur.execute("INSERT INTO month (SERVER,A,B,C,D,E)VALUES ('203.152.1.1','"+str(sumT[0])+"','"+str(sumT[1])+"','"+str(sumT[2])+"','"+str(sumT[3])+"','"+str(sumT[5])+"')")
f6.close() 
con.close()


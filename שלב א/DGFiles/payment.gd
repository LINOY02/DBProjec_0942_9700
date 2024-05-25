
[General]
Version=1

[Preferences]
Username=
Password=2436
Database=
DateFormat=dd/mm/yyyy
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=PAYMENT
Count=400

[Record]
Name=P_ID
Type=NUMBER
Size=3
Data=Random(1, 999)
Master=

[Record]
Name=COST
Type=FLOAT
Size=22
Data=Random(1000, 10000)
Master=

[Record]
Name=PAYMENT_DATE
Type=DATE
Size=
Data=Random(1/1/2022, 1/6/2024)
Master=



[General]
Version=1

[Preferences]
Username=
Password=2076
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=BOOKING
Count=400

[Record]
Name=B_ID
Type=NUMBER
Size=3
Data=Random(1, 999)
Master=

[Record]
Name=CHECK_IN
Type=DATE
Size=
Data=Random(1/1/2022, 1/6/2024)
Master=

[Record]
Name=CHECK_OUT
Type=DATE
Size=
Data=Random(2/1/2022, 1/6/2024)
Master=

[Record]
Name=C_ID
Type=NUMBER
Size=3
Data=List(select C_ID from Customer)
Master=

[Record]
Name=P_ID
Type=NUMBER
Size=3
Data=List(select P_ID from Payment)
Master=


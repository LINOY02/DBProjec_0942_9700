
[General]
Version=1

[Preferences]
Username=
Password=2744
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=WORK
Count=10

[Record]
Name=E_ID
Type=NUMBER
Size=3
Data=List(select E_ID from EMPLOYES)
Master=

[Record]
Name=A_ID
Type=NUMBER
Size=3
Data=List(select A_ID from ACTIVITIES)
Master=


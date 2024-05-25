
[General]
Version=1

[Preferences]
Username=
Password=2297
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=BOOKINGACTIVITIES
Count=`100

[Record]
Name=B_ID
Type=NUMBER
Size=3
Data=List(select B_ID from BOOKING)
Master=

[Record]
Name=A_ID
Type=NUMBER
Size=3
Data=List(select A_ID from ACTIVITIES)
Master=



[General]
Version=1

[Preferences]
Username=
Password=2327
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=BOOKINGROOMS
Count=200

[Record]
Name=R_ID
Type=NUMBER
Size=3
Data=List(select R_ID from Rooms)
Master=

[Record]
Name=B_ID
Type=NUMBER
Size=3
Data=List(select B_ID from Booking)
Master=



[General]
Version=1

[Preferences]
Username=
Password=2415
Database=
DateFormat=
CommitCount=100
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=ROOMS
Count=500

[Record]
Name=R_ID
Type=NUMBER
Size=3
Data=Sequence(1)
Master=

[Record]
Name=ROOM_TYPE
Type=NUMBER
Size=3
Data=Random(1, 5)
Master=


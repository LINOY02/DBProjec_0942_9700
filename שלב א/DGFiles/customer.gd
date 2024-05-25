
[General]
Version=1

[Preferences]
Username=
Password=2360
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=HOTEL
Name=CUSTOMER
Count=500

[Record]
Name=C_ID
Type=NUMBER
Size=3
Data=Random(0, 999)
Master=

[Record]
Name=NAME
Type=VARCHAR2
Size=15
Data=FirstName '-' LastName
Master=

[Record]
Name=EMAIL
Type=VARCHAR2
Size=15
Data=Email
Master=

[Record]
Name=PHONE
Type=NUMBER
Size=3
Data=0 + Random(0500000000, 0599999999)
Master=


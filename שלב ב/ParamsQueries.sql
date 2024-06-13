--מזהה עובד ופעילות ומציג את שם העובד, התפקיד שלו והפעילות שבה הוא מעורב
SELECT e.name AS employee_name, position, a.name AS activity_name
FROM Work w JOIN Employes e ON w.e_id = e.e_id JOIN Activities a ON w.a_id = a.a_id
WHERE e.position = &<name="position"
                 type="string"
                 list="SELECT distinct position FROM Employes">
AND w.a_id = &<name="Activity"
               type="string"
               list="SELECT a.a_id, a.name FROM Activities a ORDER BY a_id" description ="true" restricted="true">;

-----------------------------------------------------------------
insert into activities (a_id, name, description, cost) values (20, 'jip', 'adults', 65);              
insert into employes ("POSITION", "NAME", "E_ID")
values ('Driver', ' Amir-Lev', 125);              
insert into HOTEL.WORK (E_ID, A_ID)
values (125, 20); 
commit;           
insert into activities (a_id, name, description, cost) values (20, 'jip', 'adults', 65);              
insert into employes ("POSITION", "NAME", "E_ID")
values ('Driver', ' Noa-Sir', 155);              
insert into HOTEL.WORK (E_ID, A_ID)
values (155, 20); 


------------------------------------------------------------
Select C.c_id, C.name, R.room_type, P.payment_date
From CUSTOMER C JOIN BOOKING B on C.C_id = B.C_id JOIN BOOKINGROOMS BR on BR.B_id = B.B_id JOIN
 ROOMS R on BR.R_id = R.R_id JOIN PAYMENT P ON B.P_ID=P.P_ID
Where R.room_type in ('&room_type1', '&room_type2')
and P.payment_date > TO_DATE('&payment_date', 'DD/MM/YYYY')
Group by C.C_ID, C.NAME, R.room_type, P.payment_date
ORDER BY c.name &<name="room" checkbox="desc, asc">;



-------------------------------------------------------------------------------
-- מחזיר את שמות הלקוחות שכמות החדרים שלקחו בשנה שנבחרה שווה למספר שהוכנס וגם שאחד החדרים הוא מסוג החדר שהוכנס ויחזיר רק אתאת סוג החדר שהוכנס וכמה נלקח ממנו
SELECT c.name AS customer, r.room_type, count(*) AS number_of_rooms 
FROM Customer c JOIN Booking b ON c.c_id = b.c_id JOIN BookingRooms br ON b.b_id = br.b_id JOIN Rooms r ON br.r_id = r.r_id 
WHERE (c.c_id IN (SELECT c1.c_id
                 FROM Customer c1 JOIN Booking b1 ON c1.c_id = b1.c_id JOIN BookingRooms br1 ON b1.b_id = br1.b_id
                 GROUP BY c1.c_id, b1.b_id
                 HAVING COUNT(*) = &<name="number of rooms"
                                     type="integer"
                                     required="true">)) AND r.room_type = &<name="rooms type"
                                                                          type="integer"
                                                                          list="SELECT DISTINCT room_type FROM Rooms ORDER BY room_type"
                                                                          default="2"
                                                                          hint="room_type means number of beds per room which is between 1-5">
                                                       AND EXTRACT(YEAR FROM TO_DATE(b.check_in, 'DD/MM/YYYY')) = &<name="year"
                                                                                                                  type="integer"
                                                                                                                  list="22, 23, 24"
                                                                                                               restricted="yes">
GROUP BY c.c_id, r.room_type, c.name;                                                                                                                  
-----------------------------------------------------------------------------

SELECT c.name, a.name, a.description, b.check_in
FROM customer c JOIN booking b ON c.c_id=b.c_id JOIN BOOKINGACTIVITIES ba ON b.b_id=ba.b_id JOIN activities a ON ba.a_id=a.a_id
WHERE a.description IN (&<name="activities for:"
                        type="string"
                        list="adults, kids, family"
                        multiselect="yes"
                        hint="Specifies the target audience for which you are looking for an activity">)
      AND b.check_in BETWEEN ADD_MONTHs(TRUNC(SYSDATE), -18) AND TRUNC(SYSDATE)
ORDER BY b.check_in DESC;


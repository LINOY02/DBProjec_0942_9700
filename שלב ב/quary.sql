
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (106, 527);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (19, 298);
SELECT * FROM BookingActivities;
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (713, 393);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (904, 824);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (904, 393);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (904, 78);

--Select customers and their total activity costs, but only for customers who have booked more than one activity.
SELECT name AS customer_name, num_of_activities, activities_cost
FROM (SELECT c.c_id, c.name, count(*) AS num_of_activities, sum(a.cost) AS activities_cost
     FROM Customer c JOIN Booking b ON c.c_id = b.c_id JOIN BookingActivities ba ON b.b_id = ba.b_id 
     JOIN Activities a ON ba.a_id = a.a_id
     GROUP BY c.c_id, c.name
     HAVING COUNT(*) > 1)
ORDER BY activities_cost DESC;

------------------------------------------------
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (887, 6523, to_date('17-03-2023', 'dd-mm-yyyy'));                            
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (77, to_date('06-03-2023', 'dd-mm-yyyy'), to_date('21-03-2023', 'dd-mm-yyyy'), 678, 887);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (678, 'Catherine-Vance', 'catherine@v.il', 573633070);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (182, 77);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (162, 77);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (159, 77);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (160, 77);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (161, 77);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (102, 461);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (103, 461);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (104, 461);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (105, 461);

----------------------------------------

SELECT * --מזחיר את הלקוחות שהזמינו את כל סוגי החדרים
FROM customer c
WHERE NOT EXISTS (SELECT DISTINCT(r.room_type) --מחזיר את כל סוגי החדרים שכל לקוח לא שכר
                  FROM rooms r
                  WHERE r.room_type NOT IN (SELECT DISTINCT(r1.room_type) --מחזיר את כל סוגי החדרים של כל לקוח
                                            FROM bookingrooms br NATURAL JOIN rooms r1 NATURAL JOIN booking b
                                            WHERE b.c_id = c.c_id));
                                 
-----------------------------------------

SELECT c.name AS customer_name, p.cost, p.payment_date --לקוחות ששילמו בין 1000 ל3000 ותאריך התשלום שלהם הוא אחרי תאריך היציאה מהמלון
FROM Customer c JOIN Booking b ON c.c_id = b.c_id JOIN Payment p ON b.p_id = p.p_id
WHERE (c.c_id, p.p_id) IN (SELECT b.c_id, p1.p_id --לקוחות ששילמו יותר מ1000
                           FROM booking b, payment p1
                           WHERE b.p_id = p1.p_id and p1.cost > 1000
                           MINUS 
                           SELECT b1.c_id, p2.p_id --לקוחות ששילמו יותר מ3000
                           FROM booking b1, payment p2
                           WHERE b1.p_id = p2.p_id and p2.cost > 3000) AND p.payment_date > b.check_out   
ORDER BY p.cost ASC; 

---------------------------------------
                     
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 389);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 393);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 298);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 824);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 552);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 596);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 759);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 78);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 527);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 392);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 45);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 794);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 502);
ROLLBACK;
-----------------------------------------------------

SELECT e.name AS employee_name, e.position AS main_position --מחזיר את שמות העובדים ותפקידם העיקרי ששייכים לכל הפעילויות
FROM employes e JOIN work w ON e.e_id = w.e_id
WHERE w.a_id NOT IN (SELECT a.a_id --מחזיר את הפעיליות שהעובד לא שייך אליהם
                  FROM activities a
                  WHERE NOT EXISTS (SELECT w2.a_id --מחזיר את הפעיליות של העובד
                                    FROM work w2
                                    WHERE w2.a_id = a.a_id AND w2.e_id = e.e_id))
GROUP BY e.name, e.position;

----------------------------------------------------




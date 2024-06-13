SELECT b_id, count(*) FROM BookingRooms 
WHERE r_id IN (SELECT br1.r_id
               FROM BookingRooms br1 JOIN Rooms r1 ON br1.r_id = r1.r_id
               WHERE r1.room_type = 3 AND br1.b_id NOT IN (SELECT br2.b_id
                                                           FROM BookingRooms br2 JOIN Rooms r2 ON br2.r_id = r2.r_id
                                                           WHERE r2.room_type IN (4, 5)))
GROUP BY BookingRooms.b_Id;  

SELECT * FROM Rooms where r_id=111 or r_id=237                                             

rollback;
-- מחיקת הרשומות מהטבלה המקורית
DELETE FROM BookingRooms
WHERE r_id IN (SELECT br1.r_id
               FROM BookingRooms br1 JOIN Rooms r1 ON br1.r_id = r1.r_id
               WHERE r1.room_type = 3 AND br1.b_id NOT IN (SELECT br2.b_id
                                                           FROM BookingRooms br2 JOIN Rooms r2 ON br2.r_id = r2.r_id
                                                           WHERE r2.room_type IN (4, 5)));

--------------------------------------------------------------------

SELECT * FROM Booking;


SELECT * FROM Booking
WHERE check_in <= check_out - 7 AND booking.c_id IN (SELECT c_id FROM Customer
                                                     WHERE phone LIKE '%_1');



DELETE FROM Booking
WHERE check_in <= check_out - 7 AND booking.c_id IN (SELECT c_id FROM Customer
                                                     WHERE phone LIKE '%_1');

DELETE FROM BookingRooms
WHERE b_id IN (SELECT b_id FROM Booking
WHERE check_in <= check_out - 7 AND booking.c_id IN (SELECT c_id FROM Customer
                                                     WHERE phone LIKE '%_1'));

DELETE FROM BookingActivities
WHERE b_id IN (SELECT b_id FROM Booking
WHERE check_in <= check_out - 7 AND booking.c_id IN (SELECT c_id FROM Customer
                                                     WHERE phone LIKE '%_1'));


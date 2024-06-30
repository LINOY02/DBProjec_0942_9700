DECLARE
    CURSOR customersToActivate IS
        SELECT DISTINCT b.c_id
        FROM Booking b
        WHERE b.b_id IN (SELECT ba.b_id
                             FROM BookingActivities ba JOIN activities a ON ba.a_id=a.a_id
                             WHERE a.cost > 70); -- Assuming get_customers() returns a nested table or varray
   new_booking_activities_cnt NUMBER := 0;
   cust_rec customer.c_id%type;
BEGIN
    OPEN customersToActivate;
    LOOP
       exit when customersToActivate%notfound;
       fetch customersToActivate into cust_rec;
        --DBMS_OUTPUT.put_line('HDBDJD ' || cust_rec.c_id);
        -- Call procedure to add random activity for each customer
        add_random_activity(cust_rec);
        new_booking_activities_cnt := new_booking_activities_cnt + SQL%ROWCOUNT;
    END LOOP;
    CLOSE customersToActivate;
    DBMS_OUTPUT.PUT_LINE('Total new rows added: ' || new_booking_activities_cnt);
    
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

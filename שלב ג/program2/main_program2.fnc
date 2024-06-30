DECLARE    
    bookingsCursor SYS_REFCURSOR;
    activitiesCursor SYS_REFCURSOR;
    b_id Booking.b_id%TYPE;
    c_id Booking.c_id%TYPE;
    check_in Booking.check_in%TYPE;
    check_out Booking.check_out%TYPE;
    a_id Activities.a_id%TYPE;
    a_name Activities.name%TYPE;
    p_c_id customer.c_id%TYPE;

BEGIN
    p_c_id := get_id;
    -- Call the function to get the bookings for the customer
    bookingsCursor := get_customer_bookings(p_c_id);
    
    -- Loop through the cursor and display the booking details
    LOOP
        FETCH bookingsCursor INTO b_id, c_id, check_in, check_out;
        EXIT WHEN bookingsCursor%NOTFOUND;
        
        activitiesCursor := get_booking_activities(b_id);
        
        -- Loop through the activities cursor and display the activities details
        LOOP
            FETCH activitiesCursor INTO a_id, a_name;
            EXIT WHEN activitiesCursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('Activity ID: ' || a_id || ', Activity Name: ' || a_name);
            update_salary(a_id, b_id);

        END LOOP;
        CLOSE activitiesCursor;
    END LOOP;
    CLOSE bookingsCursor;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

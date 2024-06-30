CREATE OR REPLACE FUNCTION get_customer_bookings(p_c_id IN NUMBER)
RETURN SYS_REFCURSOR IS
    bookingsCursor SYS_REFCURSOR;
    b_id Booking.b_id%TYPE;
    c_id Booking.c_id%TYPE;
    check_in Booking.check_in%TYPE;
    check_out Booking.check_out%TYPE;
BEGIN
    OPEN bookingsCursor FOR
        SELECT b.b_id, b.c_id, b.check_in, b.check_out
        FROM Booking b
        WHERE b.c_id = p_c_id;
    LOOP
        FETCH bookingsCursor INTO b_id, c_id, check_in, check_out;
        EXIT WHEN bookingsCursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Booking ID: ' || b_id || ', Customer ID: ' || c_id || ', Check-in: ' 
        || check_in || ', Check-out: ' || check_out);
    END LOOP;
    CLOSE bookingsCursor;
    OPEN bookingsCursor FOR
        SELECT b.b_id, b.c_id, b.check_in, b.check_out
        FROM Booking b
        WHERE b.c_id = p_c_id;
    RETURN bookingsCursor;
END get_customer_bookings;
/

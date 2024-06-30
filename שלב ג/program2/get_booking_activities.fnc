CREATE OR REPLACE FUNCTION get_booking_activities(p_b_id IN NUMBER)
RETURN SYS_REFCURSOR IS
    activitiesCursor SYS_REFCURSOR;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Booking ID: ' || p_b_id);

    OPEN activitiesCursor FOR
        SELECT a.a_id, a.name
        FROM BookingActivities ba JOIN Activities a ON ba.a_id = a.a_id
        WHERE ba.b_id = p_b_id;

    RETURN activitiesCursor;
END get_booking_activities;
/

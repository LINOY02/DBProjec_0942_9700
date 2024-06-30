create or replace function add_act 
RETURN activities.a_id%TYPE IS
    activity_id activities.a_id%TYPE;
BEGIN
    -- Select a random activity_id from activities table
    SELECT a_id INTO activity_id
    FROM (SELECT a_id FROM activities ORDER BY DBMS_RANDOM.VALUE)
    WHERE ROWNUM = 1;
    
    RETURN activity_id;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL; -- Return NULL if no activities found
    WHEN OTHERS THEN
        RAISE;
end add_act;
/

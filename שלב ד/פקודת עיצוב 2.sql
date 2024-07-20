--מחיקת טבלת Activities והעברת הקשרים שלה לטבלת Attractions בהתאם

-- שינוי שם העמודה attraction_id ל-a_id
ALTER TABLE Attractions RENAME COLUMN attraction_id TO a_id;

ALTER TABLE Tickets RENAME COLUMN attraction_id TO a_id;


-- שלב 1: הסרת המפתח הזר הקיים
ALTER TABLE WORK DROP CONSTRAINT SYS_C007204;

-- שלב 2: הסרת המפתח הראשי כדי שנוכל למחוק את העמודה A_ID
ALTER TABLE WORK DROP CONSTRAINT SYS_C007202;

-- שלב 3: מחיקת העמודה A_ID
ALTER TABLE WORK DROP COLUMN A_ID;

--מחיקת ערכי הטבלה על מנת שנוכל למלאה מחדש בהתאם
TRUNCATE TABLE WORK;

-- שלב 4: הוספת העמודה A_ID מחדש
ALTER TABLE WORK ADD A_ID INT NOT NULL;

-- שלב 7: מילוי הטבלה ב-20 שורות רנדומליות עם ערכים מטבלאות Employes ו-Attractions
BEGIN
    FOR i IN 1..20 LOOP
        INSERT INTO WORK (E_ID, A_ID)
        SELECT
            (SELECT E_ID FROM (SELECT E_ID FROM EMPLOYES ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1),
            (SELECT A_ID FROM (SELECT A_ID FROM ATTRACTIONS ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
        FROM DUAL
        WHERE NOT EXISTS (
            SELECT 1 FROM WORK
            WHERE E_ID = (SELECT E_ID FROM (SELECT E_ID FROM EMPLOYES ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
            AND A_ID = (SELECT A_ID FROM (SELECT A_ID FROM ATTRACTIONS ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
        );
    END LOOP;
END;

-- שלב 5: הוספת המפתח הראשי מחדש
ALTER TABLE WORK ADD CONSTRAINT SYS_C007202 PRIMARY KEY (E_ID, A_ID);

-- שלב 6: הוספת המפתח הזר החדש שמקשר לטבלה Attractions
ALTER TABLE WORK ADD CONSTRAINT fk_attractions FOREIGN KEY (A_ID) REFERENCES Attractions(A_ID);



-- מחיקת כל השורות בטבלה BookingActivities
TRUNCATE TABLE BookingActivities;

-- שלב 1: הסרת המפתח הזר הקיים
ALTER TABLE BookingActivities DROP CONSTRAINT SYS_C007199;

-- שלב 2: הסרת המפתח הראשי (אם יש צורך, דאגי לבדוק אם יש מפתח ראשי קודם שיש להסיר אותו)
ALTER TABLE BookingActivities DROP CONSTRAINT SYS_C007197;

-- שלב 3: מחיקת העמודה a_id (אם צריך לבצע שינוי בעמודה הזו)
ALTER TABLE BookingActivities DROP COLUMN a_id;

-- שלב 4: הוספת העמודה a_id מחדש
ALTER TABLE BookingActivities ADD a_id INT NOT NULL;

-- שלב 5: הוספת המפתח הראשי מחדש על שני העמודות b_id ו-a_id
ALTER TABLE BookingActivities ADD CONSTRAINT SYS_C007197 PRIMARY KEY (b_id, a_id);

-- שלב 6: הוספת המפתח הזר החדש שמקשר לטבלה Attractions
ALTER TABLE BookingActivities ADD CONSTRAINT fk_attraction FOREIGN KEY (a_id) REFERENCES Attractions(a_id);

-- שלב 7: מילוי הטבלה ב-20 שורות רנדומליות עם ערכים מטבלאות Booking ו-Attractions
BEGIN
    FOR i IN 1..300 LOOP
        INSERT INTO BookingActivities (b_id, a_id)
        SELECT
            (SELECT b_id FROM (SELECT b_id FROM Booking ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1),
            (SELECT a_id FROM (SELECT a_id FROM Attractions ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
        FROM DUAL
        WHERE NOT EXISTS (
            SELECT 1 FROM BookingActivities
            WHERE b_id = (SELECT b_id FROM (SELECT b_id FROM Booking ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
            AND a_id = (SELECT a_id FROM (SELECT a_id FROM Attractions ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
        );
    END LOOP;
END;

--מחיקת הטבלה Activities
drop table Activities;

select * from bookingactivities;
select * from work;
select * from attractions;
select * from tickets;

-- בדיקת נתונים בטבלה
SELECT * FROM Customer
WHERE INSTR(email, '@') = 0;

-- עדכון הערכים המפרים
UPDATE Customer
SET email = SUBSTR(name, 1, INSTR(name, '-') - 1)  || '@com'
WHERE INSTR(email, '@') = 0;

-- הוספת האילוץ מחדש
ALTER TABLE Customer
ADD CONSTRAINT check_email_format CHECK (INSTR(email, '@') > 0);

insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (385, 'Dani-deyt', 'daroviden', 592963238);
-----------------------------

--עדכון הערכים המפרים 
UPDATE booking b1
SET b1.check_in = b1.check_out - 2
WHERE b1.b_id IN (SELECT b.b_id
                  FROM booking b
                  WHERE b.check_in >= b.check_out);
                  
--בדיקה שתאריך הצ'אק אין הוא לפני תאריך הצ'אק האוט
ALTER TABLE Booking
ADD CONSTRAINT check_dates 
CHECK (check_in < check_out);

insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (699, to_date('26-03-2023', 'dd-mm-yyyy'), to_date('21-04-2022', 'dd-mm-yyyy'), 202, 275);


----------------------------

-- הוספת ברירת מחדל לעובדים שלא הוכנס להם תפקיד מסוים
ALTER TABLE Employes
MODIFY position DEFAULT 'Counter Clerk';


insert into employes ("NAME", "E_ID")
values ('Noga-Shir', 75);

select * from employes where e_id = 75;

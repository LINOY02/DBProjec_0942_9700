--מחיקת כפילות של שני טבלאות המייצגות לקוח

-- הסרת המפתח הזר הקיים מהטבלה שאותה נמחק
ALTER TABLE Orders DROP CONSTRAINT orders_customer_id_fk;

-- הוספת עמודה חדשה `c_id`
ALTER TABLE Orders ADD c_id INT;

-- הסרת העמודה הישנה `customer_id`
ALTER TABLE Orders DROP COLUMN customer_id;

-- עדכון העמודה החדשה בערכים מ-Customer
BEGIN
  FOR rec IN (SELECT order_id FROM Orders) LOOP
    UPDATE Orders
    SET c_id = (SELECT c_id FROM (SELECT c_id FROM Customer ORDER BY DBMS_RANDOM.VALUE) WHERE ROWNUM = 1)
    WHERE order_id = rec.order_id;
  END LOOP;
END;

-- הוספת המפתח הזר עם הקשר הנכון
ALTER TABLE Orders ADD CONSTRAINT orders_customer_id_fk FOREIGN KEY (c_id) REFERENCES Customer(c_id);

select * from orders;

DROP TABLE Customers;

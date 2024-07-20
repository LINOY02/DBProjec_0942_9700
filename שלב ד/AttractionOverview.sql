--המידע המוצג כאן ייתן סקירה של האטרקציות, הכרטיסים, הקטגוריות וההזמנות.
CREATE VIEW AttractionOverview AS
SELECT
    a.a_id AS Attraction_ID,
    a.attraction_name AS Attraction_Name,
    l.location_name AS Location_Name,
    t.price AS Ticket_Price,
    t.valid_from AS Ticket_Valid_From,
    t.valid_until AS Ticket_Valid_Until,
    c.category_name AS Category_Name
FROM Attractions a
JOIN Locations l ON a.location_id = l.location_id
JOIN Tickets t ON a.a_id = t.a_id
JOIN Categories c ON t.category_id = c.category_id;

select * from AttractionOverview;


--שאילתה שמחזירה את מחיר כרטיס הי מוזל בתאריכים של מקום מסוים לקהל יעד מסוים בהתאם להכנסת הנתונים  
select aa.Ticket_Price, aa.Ticket_Valid_From, aa.Ticket_Valid_Until
from AttractionOverview aa
where aa.category_name = &<name = "Category_Name" type="string" list="select category_name from Categories">
and aa.attraction_name = &<name = "attraction_name" type="string" list="select attraction_name from Attractions">
and aa.location_name = &<name = "location_name" type="string" list="select location_name from locations">
and aa.Ticket_Price <= all (select a.Ticket_Price
from AttractionOverview a
where a.category_name = aa.category_name
and a.attraction_name = aa.attraction_name
and a.location_name = aa.location_name);


-- שאילתה שמחזירה את שמות הלקוחות, שמות האטרקציות, וכמה הזמינו מכל אחת מהן
select a.attraction_name, count(*) AS booked,  c.name AS customer_name
from AttractionOverview a JOIN bookingactivities b ON a.Attraction_ID=b.a_id 
JOIN booking bk ON b.b_id=bk.b_id JOIN customer c ON bk.c_id=c.c_id
group by a.Attraction_ID, a.attraction_name, c.name;

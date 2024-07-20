CREATE TABLE Categories
(
  category_id INT NOT NULL,
  category_name INT NOT NULL,
  min_age INT NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE Areas
(
  area_id INT NOT NULL,
  area_name INT NOT NULL,
  PRIMARY KEY (area_id)
);

CREATE TABLE Customers
(
  customer_id INT NOT NULL,
  customer_name INT NOT NULL,
  phone_number INT NOT NULL,
  address_line_1 INT NOT NULL,
  address_line_2 INT NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Locations
(
  location_id INT NOT NULL,
  location_name INT NOT NULL,
  area_id INT NOT NULL,
  PRIMARY KEY (location_id),
  FOREIGN KEY (area_id) REFERENCES Areas(area_id)
);

CREATE TABLE Attractions
(
  attraction_id INT NOT NULL,
  attraction_name INT NOT NULL,
  opening_hours INT NOT NULL,
  description INT NOT NULL,
  location_id INT NOT NULL,
  PRIMARY KEY (attraction_id),
  FOREIGN KEY (location_id) REFERENCES Locations(location_id)
);

CREATE TABLE Tickets
(
  ticket_id INT NOT NULL,
  price INT NOT NULL,
  valid_until INT NOT NULL,
  valid_from INT NOT NULL,
  category_id INT NOT NULL,
  attraction_id INT NOT NULL,
  PRIMARY KEY (ticket_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id),
  FOREIGN KEY (attraction_id) REFERENCES Attractions(attraction_id)
);

CREATE TABLE Orders
(
  order_id INT NOT NULL,
  order_date INT NOT NULL,
  customer_id INT NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE order_items
(
  ticket_id INT NOT NULL,
  order_id INT NOT NULL,
  PRIMARY KEY (ticket_id, order_id),
  FOREIGN KEY (ticket_id) REFERENCES Tickets(ticket_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

CREATE TABLE Customer
(
  c_id INT NOT NULL,
  name VARCHAR(15) NOT NULL,
  email VARCHAR(15) NOT NULL,
  phone INT NOT NULL,
  PRIMARY KEY (c_id)
);

CREATE TABLE Rooms
(
  r_id INT NOT NULL,
  room_type INT NOT NULL,
  PRIMARY KEY (r_id)
);

CREATE TABLE Payment
(
  p_id INT NOT NULL,
  cost FLOAT NOT NULL,
  payment_date DATE NOT NULL,
  PRIMARY KEY (p_id)
);

CREATE TABLE Activities
(
  a_id INT NOT NULL,
  name VARCHAR(15) NOT NULL,
  description VARCHAR(15) NOT NULL,
  cost FLOAT NOT NULL,
  PRIMARY KEY (a_id)
);

CREATE TABLE Employes
(
  position VARCHAR(15) NOT NULL,
  e_id INT NOT NULL,
  name VARCHAR(15) NOT NULL,
  PRIMARY KEY (e_id)
);

CREATE TABLE Work
(
  e_id INT NOT NULL,
  a_id INT NOT NULL,
  PRIMARY KEY (e_id, a_id),
  FOREIGN KEY (e_id) REFERENCES Employes(e_id),
  FOREIGN KEY (a_id) REFERENCES Activities(a_id)
);

CREATE TABLE Booking
(
  b_id INT NOT NULL,
  check_in DATE NOT NULL,
  check_out DATE NOT NULL,
  c_id INT NOT NULL,
  p_id INT NOT NULL,
  PRIMARY KEY (b_id),
  FOREIGN KEY (c_id) REFERENCES Customer(c_id),
  FOREIGN KEY (p_id) REFERENCES Payment(p_id)
);

CREATE TABLE BookingRooms
(
  r_id INT NOT NULL,
  b_id INT NOT NULL,
  PRIMARY KEY (r_id, b_id),
  FOREIGN KEY (r_id) REFERENCES Rooms(r_id),
  FOREIGN KEY (b_id) REFERENCES Booking(b_id)
);

CREATE TABLE BookingActivities
(
  b_id INT NOT NULL,
  a_id INT NOT NULL,
  PRIMARY KEY (b_id, a_id),
  FOREIGN KEY (b_id) REFERENCES Booking(b_id),
  FOREIGN KEY (a_id) REFERENCES Activities(a_id)
);

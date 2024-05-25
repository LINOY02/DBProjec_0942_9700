--inserts
--insert table customer
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (202, 'Yaphet-Nelligan', 'yaphet.n@air.co', 570171661);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (612, 'Grace-Gough', 'grace@kwraf.de', 572293783);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (762, 'Sara-Gambon', 'sara.gambon@new', 501060296);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (854, 'Bebe-Pesci', 'bebe.pesci@fibe', 554111485);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (678, 'Catherine-Vance', 'catherine.vance', 573633070);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (842, 'Manu-Crystal', 'mcrystal@ipsadv', 563576329);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (617, 'Rebecca-Kershaw', 'rebecca.kershaw', 561382680);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (688, 'Nicole-Franks', 'nicole.franks@a', 587083768);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (447, 'Olympia-Mathis', 'olympia.mathis@', 526954244);
insert into HOTEL.CUSTOMER (C_ID, NAME, EMAIL, PHONE)
values (95, 'Dennis-Hyde', 'dennis@providen', 590964238);


--insert table rooms
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (1, 3);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (2, 3);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (3, 3);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (4, 3);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (5, 4);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (6, 1);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (7, 4);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (8, 5);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (9, 5);
insert into HOTEL.ROOMS (R_ID, ROOM_TYPE)
values (10, 2);


--insert table booking
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (877, to_date('21-10-2023', 'dd-mm-yyyy'), to_date('01-05-2022', 'dd-mm-yyyy'), 610, 431);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (588, to_date('01-08-2022', 'dd-mm-yyyy'), to_date('17-10-2023', 'dd-mm-yyyy'), 580, 948);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (464, to_date('18-10-2023', 'dd-mm-yyyy'), to_date('11-05-2023', 'dd-mm-yyyy'), 682, 952);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (318, to_date('01-07-2023', 'dd-mm-yyyy'), to_date('25-02-2023', 'dd-mm-yyyy'), 97, 973);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (351, to_date('11-07-2022', 'dd-mm-yyyy'), to_date('09-10-2022', 'dd-mm-yyyy'), 888, 561);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (410, to_date('01-05-2023', 'dd-mm-yyyy'), to_date('12-04-2023', 'dd-mm-yyyy'), 446, 395);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (848, to_date('20-02-2023', 'dd-mm-yyyy'), to_date('17-07-2023', 'dd-mm-yyyy'), 639, 412);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (663, to_date('15-04-2022', 'dd-mm-yyyy'), to_date('08-06-2022', 'dd-mm-yyyy'), 863, 313);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (589, to_date('27-05-2023', 'dd-mm-yyyy'), to_date('18-07-2022', 'dd-mm-yyyy'), 219, 521);
insert into HOTEL.BOOKING (B_ID, CHECK_IN, CHECK_OUT, C_ID, P_ID)
values (699, to_date('26-03-2023', 'dd-mm-yyyy'), to_date('21-04-2022', 'dd-mm-yyyy'), 644, 275);


--insert table employes
insert into employes ("POSITION", "NAME", "E_ID")
values ('Shift Manager', ' Avi-choen', 123);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Workshop operator', ' Gil-Mor', 456);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Bartender', ' Saar-Roi', 258);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Driver', ' Nili-Lev', 332);
insert into employes ("POSITION", "NAME", "E_ID")
values ('child operator', ' Sara-Rot', 711);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Outside bartender', ' Liel-Vel', 852);
insert into employes ("POSITION", "NAME", "E_ID")
values ('lifeguard', ' Ron-Cali', 369);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Internal driver', ' Noa-Gor', 856);
insert into employes ("POSITION", "NAME", "E_ID")
values ('lifeguard', ' Haim-Tov', 748);
insert into employes ("POSITION", "NAME", "E_ID")
values ('Driver', ' Noga-Shir', 145);

--insert table payment
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (887, 6523, to_date('17-02-2022', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (976, 8806, to_date('20-01-2023', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (788, 2357, to_date('15-11-2023', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (768, 5644, to_date('22-12-2022', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (24, 3204, to_date('30-06-2022', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (329, 5944, to_date('25-09-2023', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (734, 3817, to_date('02-06-2023', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (117, 8547, to_date('22-05-2022', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (935, 1584, to_date('19-06-2023', 'dd-mm-yyyy'));
insert into HOTEL.PAYMENT (P_ID, COST, PAYMENT_DATE)
values (120, 8029, to_date('07-01-2022', 'dd-mm-yyyy'));


--insert table activities
insert into activities (a_id, name, description, cost) values (428, 'pool', 'family', 0);
insert into activities (a_id, name, description, cost) values (916, 'bar', 'adults', 60);
insert into activities (a_id, name, description, cost) values (498, 'baooling', 'family', 30);
insert into activities (a_id, name, description, cost) values (382, 'trip', 'family', 100);
insert into activities (a_id, name, description, cost) values (455, 'cars', 'adults', 150);
insert into activities (a_id, name, description, cost) values (531, 'art', 'kids', 40);
insert into activities (a_id, name, description, cost) values (823, 'spa', 'adults', 0);
insert into activities (a_id, name, description, cost) values (502, 'ijump', 'kids', 40);
insert into activities (a_id, name, description, cost) values (151, 'hair style', 'family', 70);
insert into activities (a_id, name, description, cost) values (280, 'jip', 'adults', 65);

--insert table work
insert into HOTEL.WORK (E_ID, A_ID)
values (748, 236);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 102);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 112);
insert into HOTEL.WORK (E_ID, A_ID)
values (123, 236);
insert into HOTEL.WORK (E_ID, A_ID)
values (145, 236);
insert into HOTEL.WORK (E_ID, A_ID)
values (258, 236);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 236);
insert into HOTEL.WORK (E_ID, A_ID)
values (748, 965);
insert into HOTEL.WORK (E_ID, A_ID)
values (711, 965);
insert into HOTEL.WORK (E_ID, A_ID)
values (369, 965);


--insert table bookingrooms
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (180, 744);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (62, 518);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (16, 69);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (188, 150);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (146, 681);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (126, 825);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (1, 857);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (115, 461);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (168, 45);
insert into HOTEL.BOOKINGROOMS (R_ID, B_ID)
values (28, 894);


--insert table bookingactivities
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (227, 527);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (180, 389);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (777, 393);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (811, 298);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (564, 824);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (904, 552);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (951, 596);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (713, 759);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (345, 78);
insert into HOTEL.BOOKINGACTIVITIES (B_ID, A_ID)
values (210, 392);




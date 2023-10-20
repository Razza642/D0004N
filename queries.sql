

INSERT INTO hotell.gaster(
    "Jenny", 
    "123456789", 
    "jenenc-0@student.ltu.se",
     0, 
     "Luleå"
);

INSERT INTO hotell.anstallda(
    "199703144367",
    "Alice",
    "receptionen@hotelhedvig.se",
    "Gatugatan 1",
    "Receptionist",
    1.0,
    "2020-09-23",
    0,
    0,
    2
);

INSERT INTO hotell.anstallda(
    "199903134387",
    "Bob",
    "städ@hotelhedvig.se",
    "Gatugatan 3",
    "Städare",
    1.0,
    "2020-09-23",
    0,
    0,
    1
);

INSERT INTO hotell.anstallda(
    "199403134387",
    "Charlie",
    "butiken@hotelhedvig.se",
    "Gatugatan 5",
    "Butikspersonal",
    1.0,
    "2020-09-23",
    0,
    0,
    1
);


INSERT INTO hotell.rum_typ(
    1,
    "Enkelrum",
    250.50
);

INSERT INTO hotell.rum_typ(
    2,
    "Dubbelrum",
    340.50
);

INSERT INTO hotell.rum_typ(
    3,
    "Familjerum",
    450.50
);

#Ett enkelrum städat av bob
INSERT INTO hotell.rum(
    1,
    1,
    0,
    1,
    2
);


INSERT INTO hotell.bokning_rum(
    1,
    2,
    "2023-10-16",
    250.50
);

INSERT INTO hotell.bokning_gaster(
    1, #'Jenny'
    1  #Rum nr 1
);


INSERT INTO hotell.in_ut_checkning(
    "2023-10-20",
    "2023-10-21",
    "2023-10-20 12:23:11",
    null, #Ej utcheckad
    1, #bg 1
    1, #incheckad av alice
    null #Ej utcheckad
);

INSERT INTO hotell.bokning_res(
    3,
    1,
    2,
    "2023-10-20",
    0
);

---------------------------------------------

SELECT * FROM hotell.gast
ORDER BY namn; 
-- sorering i alfabetsordning

INSERT INTO hotell.gast 
VALUES ("Rasmus","Teo"),
("123123123","987654321"),
("raswid-3@student.ltu.se",
"teolas-1@student.ltu.se"),
("1","0"),("Piteå","Luleå")
;
-- flera gäster registrerade samtidigt

SELECT count(*) from bokning_rum 
WHERE date BETWEEN '2023-06-01' AND '2023-08-31';
-- hur mång bokningar som gjorts under sommarperioden

SELECT rum.rumnr, count (bokning_rum.bokdatum) from rum
JOIN bokning_gaster
ON rum.rum_nr = bokning_gaster.rum_nr
JOIN in_ut_checkning
ON bokning_gaster.bg_id = in_ut_checkning.bk_id
WHERE date BETWEEN '2023-06-01' AND '2023-08-31';
-- vilka rum som är mest populära under sommarperioden (är nog ute och cyklar)

UPDATE anstallda
SET address = "Björkvägen 6"
WHERE anst_id = "199903134387"
-- uppdatering av personals address

INSERT INTO erbjudande
VALUES ("924173006488", "9", "2023-06-23","2023-06-25","500");
-- nytt erbjudande för midsommarhelgen

SELECT count(gast_antal) from bokning_res
ORDER BY datum
WHERE datum BETWEEN '2023-07-01' AND '2023-07-31';



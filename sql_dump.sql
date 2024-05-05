PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE directors (
director_id int NOT NULL,
director text NOT NULL, gender text,
PRIMARY KEY (director_id)
);
INSERT INTO directors VALUES(1,'Alfred Hitchcock','male');
INSERT INTO directors VALUES(2,'Raoul Walsh','male');
INSERT INTO directors VALUES(3,'John Huston','male');
INSERT INTO directors VALUES(4,'Luchino Visconti','male');
INSERT INTO directors VALUES(5,'Robert Siodmak','male');
INSERT INTO directors VALUES(6,'Billy Wilder','male');
INSERT INTO directors VALUES(7,'George Cukor','male');
INSERT INTO directors VALUES(8,'Otto Preminger','male');
INSERT INTO directors VALUES(9,'Fritz Lang','male');
INSERT INTO directors VALUES(10,'Edward Dmytryk','male');
INSERT INTO directors VALUES(11,'John Brahm','male');
INSERT INTO directors VALUES(12,'Michael Curtiz','male');
INSERT INTO directors VALUES(13,'Edgar G. Ulmer','male');
INSERT INTO directors VALUES(14,'John M. Stahl','male');
INSERT INTO directors VALUES(15,'Charles Vidor','male');
INSERT INTO directors VALUES(16,'Tay Garnett','male');
INSERT INTO directors VALUES(17,'Howard Hawks','male');
INSERT INTO directors VALUES(18,'Edmund Goulding','male');
INSERT INTO directors VALUES(19,'Jacques Tourneur','male');
INSERT INTO directors VALUES(20,'Anthony Mann','male');
INSERT INTO directors VALUES(21,'Orson Welles','male');
INSERT INTO directors VALUES(22,'Henry Hathaway','male');
INSERT INTO directors VALUES(23,'Nicholas Ray','male');
INSERT INTO directors VALUES(24,'Abraham Polonsky','male');
INSERT INTO directors VALUES(25,'Carol Reed','female');
INSERT INTO directors VALUES(26,'Joseph H. Lewis','male');
INSERT INTO directors VALUES(27,'Jules Dassin','male');
INSERT INTO directors VALUES(28,'Samuel Fuller','male');
INSERT INTO directors VALUES(29,'Henri-Georges Clouzot','male');
INSERT INTO directors VALUES(30,'Robert Aldrich','male');
INSERT INTO directors VALUES(31,'Charles Laughton','male');
INSERT INTO directors VALUES(32,'Stanley Kubrick','male');
INSERT INTO directors VALUES(33,'Alexander Mackendrick','male');
INSERT INTO directors VALUES(34,'Ladislov Vajda','male');
INSERT INTO directors VALUES(35,'Irving Lerner','male');
INSERT INTO directors VALUES(36,'Robert Wise','male');
INSERT INTO directors VALUES(37,'Michael Powell','male');
INSERT INTO directors VALUES(38,'François Truffaut','male');
CREATE TABLE countries (
country_id int NOT NULL,
country text NOT NULL,
PRIMARY KEY (country_id)
);
INSERT INTO countries VALUES(1,'United States of America');
INSERT INTO countries VALUES(2,'United Kingdom');
INSERT INTO countries VALUES(3,'France');
INSERT INTO countries VALUES(4,'Germany');
INSERT INTO countries VALUES(5,'Italy');
INSERT INTO countries VALUES(6,'Switzerland');
INSERT INTO countries VALUES(7,'Spain');
INSERT INTO countries VALUES(8,'Austria');
CREATE TABLE languages (
lang_id int NOT NULL,
lang text NOT NULL,
PRIMARY KEY (lang_id)
);
INSERT INTO languages VALUES(1,'English');
INSERT INTO languages VALUES(2,'French');
INSERT INTO languages VALUES(3,'German');
INSERT INTO languages VALUES(4,'Italian');
CREATE TABLE screenplay (
writer_id int NOT NULL,
writer text NOT NULL, gender text,
PRIMARY KEY (writer_id)
);
INSERT INTO screenplay VALUES(1,'Robert E. Sherwood','male');
INSERT INTO screenplay VALUES(2,'John Huston','male');
INSERT INTO screenplay VALUES(3,'Thornton Wilder','male');
INSERT INTO screenplay VALUES(4,'Luchino Visconti','male');
INSERT INTO screenplay VALUES(5,'Bernard C. Schoenfeld','male');
INSERT INTO screenplay VALUES(6,'Billy Wilder','male');
INSERT INTO screenplay VALUES(7,'John Van Druten','male');
INSERT INTO screenplay VALUES(8,'Jay Dratler','male');
INSERT INTO screenplay VALUES(9,'Nunnally Johnson','male');
INSERT INTO screenplay VALUES(10,'John Paxton','male');
INSERT INTO screenplay VALUES(11,'Barré Lyndon','male');
INSERT INTO screenplay VALUES(12,'Ranald MacDougall','male');
INSERT INTO screenplay VALUES(13,'Martin Goldsmith','male');
INSERT INTO screenplay VALUES(14,'Jo Swerling','male');
INSERT INTO screenplay VALUES(15,'Jo Eisinger','male');
INSERT INTO screenplay VALUES(16,'Harry Ruskin','male');
INSERT INTO screenplay VALUES(17,'William Faulkner','male');
INSERT INTO screenplay VALUES(18,'Anthony Veiller','male');
INSERT INTO screenplay VALUES(19,'Jules Furthman','male');
INSERT INTO screenplay VALUES(20,'Daniel Mainwaring','male');
INSERT INTO screenplay VALUES(21,'John C. Higgins','male');
INSERT INTO screenplay VALUES(22,'Orson Welles','male');
INSERT INTO screenplay VALUES(23,'Jerome Cady','male');
INSERT INTO screenplay VALUES(24,'Charles Schnee','male');
INSERT INTO screenplay VALUES(25,'Abraham Polonsky','male');
INSERT INTO screenplay VALUES(26,'Graham Greene','male');
INSERT INTO screenplay VALUES(27,'Ivan Goff','male');
INSERT INTO screenplay VALUES(28,'Dalton Trumbo','male');
INSERT INTO screenplay VALUES(29,'Austin Dempster','male');
INSERT INTO screenplay VALUES(30,'Andrew P. Solt','male');
INSERT INTO screenplay VALUES(31,'Ben Maddow','male');
INSERT INTO screenplay VALUES(32,'Charles Brackett','male');
INSERT INTO screenplay VALUES(33,'Samuel Fuller','male');
INSERT INTO screenplay VALUES(34,'John Michael Hayes','male');
INSERT INTO screenplay VALUES(35,'Henri-Georges Clouzot','male');
INSERT INTO screenplay VALUES(36,'Philip Yordan','male');
INSERT INTO screenplay VALUES(37,'Auguste Le Breton','male');
INSERT INTO screenplay VALUES(38,'Albert Isaac Bezzerides','male');
INSERT INTO screenplay VALUES(39,'James Agee','male');
INSERT INTO screenplay VALUES(40,'Stanley Kubrick','male');
INSERT INTO screenplay VALUES(41,'Clifford Odets','male');
INSERT INTO screenplay VALUES(42,'Alec Coppel','male');
INSERT INTO screenplay VALUES(43,'Lazar Wechsler','male');
INSERT INTO screenplay VALUES(44,'Ben Simcoe','male');
INSERT INTO screenplay VALUES(45,'Leo Marks','male');
INSERT INTO screenplay VALUES(46,'Joseph Stefano','male');
INSERT INTO screenplay VALUES(47,'François Truffaut','male');
CREATE TABLE film_lang (
film_lang_id int NOT NULL,
film_id int NOT NULL,
lang_id int NOT NULL,
PRIMARY KEY (film_lang_id),
FOREIGN KEY (film_id) REFERENCES films(film_id),
FOREIGN KEY (lang_id) REFERENCES languages(lang_id)
);
INSERT INTO film_lang VALUES(1,1,1);
INSERT INTO film_lang VALUES(2,2,1);
INSERT INTO film_lang VALUES(3,3,1);
INSERT INTO film_lang VALUES(4,4,1);
INSERT INTO film_lang VALUES(5,5,4);
INSERT INTO film_lang VALUES(6,6,1);
INSERT INTO film_lang VALUES(7,7,1);
INSERT INTO film_lang VALUES(8,8,1);
INSERT INTO film_lang VALUES(9,9,1);
INSERT INTO film_lang VALUES(10,10,1);
INSERT INTO film_lang VALUES(11,11,1);
INSERT INTO film_lang VALUES(12,12,1);
INSERT INTO film_lang VALUES(13,13,1);
INSERT INTO film_lang VALUES(14,14,1);
INSERT INTO film_lang VALUES(15,15,1);
INSERT INTO film_lang VALUES(16,16,1);
INSERT INTO film_lang VALUES(17,17,1);
INSERT INTO film_lang VALUES(18,18,1);
INSERT INTO film_lang VALUES(19,19,1);
INSERT INTO film_lang VALUES(20,20,1);
INSERT INTO film_lang VALUES(21,21,1);
INSERT INTO film_lang VALUES(22,22,1);
INSERT INTO film_lang VALUES(23,23,1);
INSERT INTO film_lang VALUES(24,24,1);
INSERT INTO film_lang VALUES(25,25,1);
INSERT INTO film_lang VALUES(26,26,1);
INSERT INTO film_lang VALUES(27,27,1);
INSERT INTO film_lang VALUES(28,27,3);
INSERT INTO film_lang VALUES(29,28,1);
INSERT INTO film_lang VALUES(30,29,1);
INSERT INTO film_lang VALUES(31,30,1);
INSERT INTO film_lang VALUES(32,31,1);
INSERT INTO film_lang VALUES(33,32,1);
INSERT INTO film_lang VALUES(34,33,1);
INSERT INTO film_lang VALUES(35,34,1);
INSERT INTO film_lang VALUES(36,35,1);
INSERT INTO film_lang VALUES(37,36,2);
INSERT INTO film_lang VALUES(38,37,1);
INSERT INTO film_lang VALUES(39,38,2);
INSERT INTO film_lang VALUES(40,39,1);
INSERT INTO film_lang VALUES(41,40,1);
INSERT INTO film_lang VALUES(42,41,1);
INSERT INTO film_lang VALUES(43,42,1);
INSERT INTO film_lang VALUES(44,43,1);
INSERT INTO film_lang VALUES(45,44,1);
INSERT INTO film_lang VALUES(46,45,3);
INSERT INTO film_lang VALUES(47,46,1);
INSERT INTO film_lang VALUES(48,47,1);
INSERT INTO film_lang VALUES(49,48,1);
INSERT INTO film_lang VALUES(50,49,1);
INSERT INTO film_lang VALUES(51,50,2);
CREATE TABLE film_countries (
film_countries_id int NOT NULL,
film_id int NOT NULL,
country_id int NOT NULL,
PRIMARY KEY (film_countries_id),
FOREIGN KEY (film_id) REFERENCES films(film_id),
FOREIGN KEY (country_id) REFERENCES countries(country_id)
);
INSERT INTO film_countries VALUES(1,1,1);
INSERT INTO film_countries VALUES(2,2,1);
INSERT INTO film_countries VALUES(3,3,1);
INSERT INTO film_countries VALUES(4,4,1);
INSERT INTO film_countries VALUES(5,5,5);
INSERT INTO film_countries VALUES(6,6,1);
INSERT INTO film_countries VALUES(7,7,1);
INSERT INTO film_countries VALUES(8,8,1);
INSERT INTO film_countries VALUES(9,9,1);
INSERT INTO film_countries VALUES(10,10,1);
INSERT INTO film_countries VALUES(11,11,1);
INSERT INTO film_countries VALUES(12,12,1);
INSERT INTO film_countries VALUES(13,13,1);
INSERT INTO film_countries VALUES(14,14,1);
INSERT INTO film_countries VALUES(15,15,1);
INSERT INTO film_countries VALUES(16,16,1);
INSERT INTO film_countries VALUES(17,17,1);
INSERT INTO film_countries VALUES(18,18,1);
INSERT INTO film_countries VALUES(19,19,1);
INSERT INTO film_countries VALUES(20,20,1);
INSERT INTO film_countries VALUES(21,21,1);
INSERT INTO film_countries VALUES(22,22,1);
INSERT INTO film_countries VALUES(23,23,1);
INSERT INTO film_countries VALUES(24,24,1);
INSERT INTO film_countries VALUES(25,25,1);
INSERT INTO film_countries VALUES(26,26,1);
INSERT INTO film_countries VALUES(27,27,2);
INSERT INTO film_countries VALUES(28,27,8);
INSERT INTO film_countries VALUES(29,28,1);
INSERT INTO film_countries VALUES(30,29,1);
INSERT INTO film_countries VALUES(31,30,2);
INSERT INTO film_countries VALUES(32,31,1);
INSERT INTO film_countries VALUES(33,32,1);
INSERT INTO film_countries VALUES(34,33,1);
INSERT INTO film_countries VALUES(35,34,1);
INSERT INTO film_countries VALUES(36,35,1);
INSERT INTO film_countries VALUES(37,36,3);
INSERT INTO film_countries VALUES(38,37,1);
INSERT INTO film_countries VALUES(39,38,3);
INSERT INTO film_countries VALUES(40,39,1);
INSERT INTO film_countries VALUES(41,40,1);
INSERT INTO film_countries VALUES(42,41,1);
INSERT INTO film_countries VALUES(43,42,1);
INSERT INTO film_countries VALUES(44,43,1);
INSERT INTO film_countries VALUES(45,44,1);
INSERT INTO film_countries VALUES(46,45,4);
INSERT INTO film_countries VALUES(47,45,6);
INSERT INTO film_countries VALUES(48,45,7);
INSERT INTO film_countries VALUES(49,46,1);
INSERT INTO film_countries VALUES(50,47,1);
INSERT INTO film_countries VALUES(51,48,2);
INSERT INTO film_countries VALUES(52,49,1);
INSERT INTO film_countries VALUES(53,50,3);
CREATE TABLE films (
film_id int NOT NULL,
film text NOT NULL,
director_id int NOT NULL,
duration int NOT NULL,
year int NOT NULL,
PRIMARY KEY (film_id),
FOREIGN KEY (director_id) REFERENCES directors(director_id)
);
INSERT INTO films VALUES(1,'Rebecca',1,130,1940);
INSERT INTO films VALUES(2,'High Sierra',2,100,1941);
INSERT INTO films VALUES(3,'The Maltese Falcon',3,100,1941);
INSERT INTO films VALUES(4,'Shadow of a Doubt',1,108,1943);
INSERT INTO films VALUES(5,'Ossessione',4,140,1943);
INSERT INTO films VALUES(6,'Phantom Lady',5,87,1944);
INSERT INTO films VALUES(7,'Double Indemnity',6,107,1944);
INSERT INTO films VALUES(8,'Gaslight',7,114,1944);
INSERT INTO films VALUES(9,'Laura',8,88,1944);
INSERT INTO films VALUES(10,'The Woman in the Window',9,107,1944);
INSERT INTO films VALUES(11,'Murder, My Sweet',10,95,1944);
INSERT INTO films VALUES(12,'Hangover Square',11,77,1945);
INSERT INTO films VALUES(13,'Mildred Pierce',12,111,1945);
INSERT INTO films VALUES(14,'Detour',13,68,1945);
INSERT INTO films VALUES(15,'Leave Her to Heaven',14,110,1945);
INSERT INTO films VALUES(16,'Gilda',15,110,1946);
INSERT INTO films VALUES(17,'The Postman Always Rings Twice',16,113,1946);
INSERT INTO films VALUES(18,'The Big Sleep',17,114,1946);
INSERT INTO films VALUES(19,'The Killers',5,103,1946);
INSERT INTO films VALUES(20,'Nightmare Alley',18,110,1947);
INSERT INTO films VALUES(21,'Out of the Past',19,97,1947);
INSERT INTO films VALUES(22,'T-Men',20,92,1947);
INSERT INTO films VALUES(23,'The Lady from Shanghai',21,87,1947);
INSERT INTO films VALUES(24,'Call Northside 777',22,112,1948);
INSERT INTO films VALUES(25,'They Live by Night',23,95,1948);
INSERT INTO films VALUES(26,'Force of Evil',24,79,1948);
INSERT INTO films VALUES(27,'The Third Man',25,104,1949);
INSERT INTO films VALUES(28,'White Heat',2,114,1949);
INSERT INTO films VALUES(29,'Gun Crazy',26,87,1950);
INSERT INTO films VALUES(30,'Night and the City',27,101,1950);
INSERT INTO films VALUES(31,'In a Lonely Place',23,94,1950);
INSERT INTO films VALUES(32,'The Asphalt Jungle',3,112,1950);
INSERT INTO films VALUES(33,'Sunset Boulevard',6,110,1950);
INSERT INTO films VALUES(34,'Pickup on South Street',28,80,1953);
INSERT INTO films VALUES(35,'Rear Window',1,112,1954);
INSERT INTO films VALUES(36,'Les diaboliques',29,117,1955);
INSERT INTO films VALUES(37,'The Big Combo',26,87,1955);
INSERT INTO films VALUES(38,'Rififi',27,118,1955);
INSERT INTO films VALUES(39,'Kiss Me Deadly',30,106,1955);
INSERT INTO films VALUES(40,'The Night of the Hunter',31,92,1955);
INSERT INTO films VALUES(41,'The Killing',32,84,1956);
INSERT INTO films VALUES(42,'Sweet Smell of Success',33,96,1957);
INSERT INTO films VALUES(43,'Touch of Evil',21,95,1958);
INSERT INTO films VALUES(44,'Vertigo',1,128,1958);
INSERT INTO films VALUES(45,'It Happened in Broad Daylight',34,100,1958);
INSERT INTO films VALUES(46,'Murder by Contract',35,81,1958);
INSERT INTO films VALUES(47,'Odds Against Tomorrow',36,96,1959);
INSERT INTO films VALUES(48,'Peeping Tom',37,101,1960);
INSERT INTO films VALUES(49,'Psycho',1,109,1960);
INSERT INTO films VALUES(50,'Shoot the Piano Player',38,81,1960);
COMMIT;

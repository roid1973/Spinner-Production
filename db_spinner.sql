DROP DATABASE IF EXISTS spinnerDB;
CREATE DATABASE IF NOT EXISTS spinnerDB;


CREATE TABLE IF NOT EXISTS spinnerDB.class (  
	classId int NOT NULL AUTO_INCREMENT,
  className VARCHAR(20) NOT NULL,
  hyperLink VARCHAR(255),
#  classAddress  VARCHAR(255),
#  classGifPath VARCHAR(255),
  PRIMARY KEY(classId)
);

INSERT INTO spinnerDB.class (className)
VALUES ('KY SPINNERS');
INSERT INTO spinnerDB.class (className,hyperLink)
VALUES ('TRX In & Out','http://maayangilat.wix.com/trxoutdoor#!-/cbwn');
INSERT INTO spinnerDB.class (className)
VALUES ('Test Class');

SELECT * FROM spinnerDB.class;


CREATE TABLE IF NOT EXISTS spinnerDB.person (  
  personId int NOT NULL AUTO_INCREMENT,
  phoneNumber VARCHAR(255) NOT NULL,
  firstName VARCHAR(255) NOT NULL,  
  lastName VARCHAR(255),
  address VARCHAR(255),
  email VARCHAR(255),
  birthDate DATE,  
  CONSTRAINT pk_person PRIMARY KEY(personId, phoneNumber, firstName)
);

INSERT INTO spinnerDB.person (personId,phoneNumber, firstName, lastName, address, email)
VALUES (-1,'NA','NA','NA','NA','NA');

INSERT INTO spinnerDB.person (personId, phoneNumber, firstName, lastName, address, email, birthDate)
VALUES (1000,'(972)0507730705','Roi','Dayan','KY Hanegev 10','roid@amdocs.com','1973-11-09');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0507730705','Yam','Dayan','KY Hanegev 10','yam@gmail.com','2014-01-09');
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0507730705','Nave','Dayan','KY Hanegev 10','Nave@gmail.com','2007-12-19');
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0507730705','Beeri','Dayan','KY Hanegev 10','Beeri@gmail.com','2006-01-22');


INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0547439943','Lauris','','KY Dan 36','ree@netvision.net.il',NULL);

/*
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0504874499','Maayan','Gilat','Kfar Saba','MaayanGilat@gmail.com','2000-01-01');
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0501234567','Ben','XXX','Kfar Saba','Ben@gmail.com','2000-01-01');
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0505556666','Daniel','XXX','Kfar Saba','Daniel@gmail.com','2000-01-01');
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0507778888','Revital','XXX','Kfar Saba','Revital@gmail.com','2000-01-01');
*/
INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0549996851','Idan','Korin','Haifa','idan.korin@elbitsystems.com','1971-10-10');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0529571776','Zohar','Lis','Tzur Yigal','ZLiss@tmlw.co.il','1973-05-09');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0549314729','Edut','Korin','Haifa','edutkorin@gmail.com','1971-03-06');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0549985508','Ehud','Dayan','Dekel 58','ehudayan@gmail.com','1940-01-02');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0549985509','Yochi','Dayan','Dekel 58','dayanyochi@gmail.com','1945-11-27');

INSERT INTO spinnerDB.person (phoneNumber, firstName, lastName, address, email, birthDate)
VALUES ('(972)0525707388','Ali','Dayan','Modin','alidin@gmail.com','1980-01-01');

INSERT INTO spinnerDB.person (phoneNumber, firstName)
VALUES ('(972)123456789','Test');

SELECT * FROM spinnerDB.person;


CREATE TABLE IF NOT EXISTS spinnerDB.personClass (  
  classId int NOT NULL, 
  personId int NOT NULL, 
  type VARCHAR(255) NOT NULL,
  numberOfValidRegistrations int DEFAULT -999,
  CONSTRAINT fk_pc_class FOREIGN KEY (classId) REFERENCES spinnerDB.class(classId),
  CONSTRAINT fk_pc_person FOREIGN KEY (personId) REFERENCES spinnerDB.person(personId)
);

INSERT INTO spinnerDB.personClass (classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Test'),'STUDENT');

INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Lauris'),'ADMIN');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Lauris'),'INSTRUCTOR');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Lauris'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Nave'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Roi'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Yam'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Beeri'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Idan'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Ehud'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Edut'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'), (Select personId from spinnerDB.person where firstName = 'Zohar'),'STUDENT');

/*
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Maayan'),'ADMIN');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Maayan'),'INSTRUCTOR');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Maayan'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Ben'),'INSTRUCTOR');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Ben'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Daniel'),'INSTRUCTOR');

INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Roi'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Nave'),'STUDENT');
INSERT INTO spinnerDB.personClass(classId,personId,type)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'), (Select personId from spinnerDB.person where firstName = 'Yam'),'STUDENT');
*/

SELECT * FROM spinnerDB.personClass;


CREATE TABLE IF NOT EXISTS spinnerDB.events (
  eventId int NOT NULL AUTO_INCREMENT,
  classId int NOT NULL,
  eventName VARCHAR(20) NOT NULL,
  fromDate DATETIME NOT NULL,
  toDate DATETIME,
  lockTime INT DEFAULT 0,
  maxCapacity INT,
  instructorId INT NULL,
  address VARCHAR(255),
  comments VARCHAR(255),
  created DATETIME DEFAULT CURRENT_TIMESTAMP,
  lastUpdated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  status varchar(255) DEFAULT 'EVENT_OPEN' CHECK (status IN ('EVENT_OPEN','EVENT_LOCKED','EVENT_LOCKED_FOR_UNREGISTRATION')),
  CONSTRAINT pk_events PRIMARY KEY(eventId, classId, eventName, fromDate),
  FOREIGN KEY (classId) REFERENCES spinnerDB.class(classId),
  FOREIGN KEY (instructorId) REFERENCES spinnerDB.person(personId)
);


INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Mrn','2015-10-10 07:30:00','2015-10-10 08:30:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Noon','2015-10-10 13:00:00','2015-10-10 14:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Eve','2015-10-10 19:00:00','2015-10-10 21:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');


INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Mrn','2015-12-10 07:30:00','2015-12-10 08:30:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Noon','2015-12-10 13:00:00','2015-12-10 14:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'KY Matnas','This Field is saved for Event comment');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Eve','2015-12-10 19:00:00','2015-12-10 21:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');

INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Mrn','2015-12-11 07:30:00','2015-12-11 08:30:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Noon','2015-12-11 13:00:00','2015-12-11 14:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Eve','2015-12-11 19:00:00','2015-12-11 21:00:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'This Field is saved for Event comment');

INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, comments)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),'Spinning-Mrn1','2015-12-10 07:30:00','2015-12-10 08:30:00',2,(Select personId from spinnerDB.person where firstName = 'Lauris'),'');

/*
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX FLOW','2016-01-25 07:30:00','2016-01-25 08:20:00',2,(Select personId from spinnerDB.person where firstName = 'Maayan'),'studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TEEN TRX','2016-01-25 19:00:00','2016-01-25 19:50:00',2,(Select personId from spinnerDB.person where firstName = 'Maayan'),'studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'PURE TRX','2016-01-25 20:00:00','2016-01-25 20:50:00',2,(Select personId from spinnerDB.person where firstName = 'Maayan'),'studio KY','TRX training');
#Monday
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX OUTDOOR','2015-10-26 20:00:00','2015-10-26 20:50:00',10,(Select personId from spinnerDB.person where firstName = 'Ben'),'Play ground KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX OUTDOOR','2015-10-26 21:00:00','2015-10-26 21:50:00',10,(Select personId from spinnerDB.person where firstName = 'Ben'),'Playground KY','TRX training');
#Tuesday
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX HIIT','2015-10-27 20:00:00','2015-10-27 20:50:00',15,(Select personId from spinnerDB.person where firstName = 'Daniel'),'Studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'PURE TRX','2015-10-27 21:00:00','2015-10-27 21:50:00',15,(Select personId from spinnerDB.person where firstName = 'Maayan'),'Studio KY','TRX training');
#Wedensday
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX FLOW','2015-10-28 07:30:00','2015-10-28 08:20:00',15,(Select personId from spinnerDB.person where firstName = 'Ben'),'studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'PURE TRX','2015-10-28 08:30:00','2015-10-28 09:20:00',15,(Select personId from spinnerDB.person where firstName = 'Ben'),'studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TEEN TRX','2015-10-28 19:00:00','2015-10-28 19:50:00',15,(Select personId from spinnerDB.person where firstName = 'Maayan'),'studio KY','TRX training');
#Thursday
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX OUTDOOR','2015-10-29 20:30:00','2015-10-29 21:20:00',10,(Select personId from spinnerDB.person where firstName = 'Maayan'),'Play ground KY','TRX training');
#Friday
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'PURE TRX','2015-10-30 08:00:00','2015-10-30 08:50:00',15,(Select personId from spinnerDB.person where firstName = 'Revital'),'Studio KY','TRX training');
INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX HIIT','2015-10-30 09:00:00','2015-10-30 09:50:00',15,(Select personId from spinnerDB.person where firstName = 'Revital'),'Studio KY','TRX training');

INSERT INTO spinnerDB.events (classId, eventName, fromDate, toDate, lockTime, maxCapacity, instructorId, address, comments)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),'TRX HIIT','2015-12-30 09:00:00','2015-12-30 09:50:00',43200,15,(Select personId from spinnerDB.person where firstName = 'Revital'),'Studio KY','TRX training');
*/

SELECT * FROM spinnerDB.events;

CREATE TABLE IF NOT EXISTS spinnerDB.registration (     
  classId int NOT NULL,
  eventId int NOT NULL, 
  personId int NOT NULL,
  status VARCHAR(255) NOT NULL,
  lastUpdated DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,   
  CONSTRAINT fk_registration_classId FOREIGN KEY (classId) REFERENCES spinnerDB.class(classId),
  CONSTRAINT fk_registration_eventId FOREIGN KEY (eventId) REFERENCES spinnerDB.events(eventId),
  CONSTRAINT fk_registration_personId FOREIGN KEY (personId) REFERENCES spinnerDB.person(personId)
);

/*
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,1,'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,1,'UNREGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,1,'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,2,'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,3,'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,10,'STANDBY');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,11,'STANDBY');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'Test Class'),4,12,'STANDBY');
*/
/*
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),(Select eventId from spinnerDB.events where fromDate = '2016-01-25 07:30:00'),(Select personId from spinnerDB.person where firstName = 'Roi'),'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),(Select eventId from spinnerDB.events where fromDate = '2016-01-25 07:30:00'),(Select personId from spinnerDB.person where firstName = 'Yam'),'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),(Select eventId from spinnerDB.events where fromDate = '2016-01-25 07:30:00'),(Select personId from spinnerDB.person where firstName = 'Nave'),'REGISTERED');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),(Select eventId from spinnerDB.events where fromDate = '2016-01-25 07:30:00'),(Select personId from spinnerDB.person where firstName = 'Maayan'),'STANDBY');
INSERT INTO spinnerDB.registration (classId, eventId, personId, status)
VALUES ((Select classId from spinnerDB.class where className = 'TRX In & Out'),(Select eventId from spinnerDB.events where fromDate = '2016-01-25 07:30:00'),(Select personId from spinnerDB.person where firstName = 'Ben'),'STANDBY');
*/
SELECT * FROM spinnerDB.registration;

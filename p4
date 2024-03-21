CREATE TABLE STUDENT(
USN VARCHAR(10) PRIMARY KEY,
SNAME VARCHAR(20),
ADDRESS VARCHAR(20),
PHONE INTEGER,
GENDER VARCHAR(1)
);

CREATE TABLE SEMSEC(
SSID VARCHAR(20) PRIMARY KEY,
SEM INTEGER,
SEC VARCHAR(20));

CREATE TABLE CLASS (
USN VARCHAR(20),
SSID VARCHAR(20),
FOREIGN KEY (USN) REFERENCES STUDENT (USN) ON DELETE CASCADE,
FOREIGN KEY(SSID) REFERENCES SEMSEC (SSID) ON DELETE CASCADE,
PRIMARY KEY (USN , SSID)
);

CREATE TABLE SUBJECT (
SUBCODE VARCHAR(10) PRIMARY KEY,
TITLE VARCHAR(20),
SEM INTEGER,
CREDITS INTEGER
);

CREATE TABLE IAMARKS(
USN VARCHAR(10),
SUBCODE VARCHAR(10),
SSID VARCHAR(20),
TEST1 INTEGER,
TEST2 INTEGER,
TEST3 INTEGER,
FINALIA INTEGER,
FOREIGN KEY(USN) REFERENCES STUDENT (USN) ON DELETE CASCADE,
FOREIGN KEY(SUBCODE) REFERENCES SUBJECT (SUBCODE) ON DELETE CASCADE,
FOREIGN KEY (SSID) REFERENCES SEMSEC (SSID) ON DELETE CASCADE,
PRIMARY KEY (USN, SSID, SUBCODE)
);

INSERT INTO STUDENT VALUES ('1DT13CS020','AKSHAY','BELAGAVI',887788112,'M');
INSERT INTO STUDENT VALUES ('1DT13CS062','SANDHYA','BENGALURU',772282991,'F');
INSERT INTO STUDENT VALUES ('1DT13CS091','TEESHA','BENGALURU',771231231,'F');
INSERT INTO STUDENT VALUES ('1DT13CS066','SUPRIYA','MANGALURU',887788112,'F');
INSERT INTO STUDENT VALUES ('1DT14CS010','ABHAY','BENGALURU',990021120,'M');
INSERT INTO STUDENT VALUES ('1DT14CS032','BHASKAR','BENGALURU',992321109,'M');
INSERT INTO STUDENT VALUES ('1DT14CS025','ASMI','BENGALURU', 789473737,'F');
INSERT INTO STUDENT VALUES ('1DT15CS011','AJAY','TUMKUR', 984509134,'M');
INSERT INTO STUDENT VALUES ('1DT15CS029','CHITRA','DAVANGERE',769677211,'F');
INSERT INTO STUDENT VALUES ('1DT15CS045','JEEVA','BELLARY', 994485012,'M');
INSERT INTO STUDENT VALUES ('1DT15CS091','SANTOSH','MANGALURU',881233220,'M');
INSERT INTO STUDENT VALUES ('1DT16CS045','ISMAIL','KALBURGI',990023221,'M');
INSERT INTO STUDENT VALUES ('1DT16CS088','SAMEERA','SHIMOGA',990554221,'F');
INSERT INTO STUDENT VALUES ('1DT16CS122','VINAYAKA','CHIKAMAGALUR',880088001,'M');

INSERT INTO SEMSEC VALUES ('CSE8A', 8,'A');
INSERT INTO SEMSEC VALUES ('CSE8B', 8,'B');
INSERT INTO SEMSEC VALUES ('CSE8C', 8,'C');
INSERT INTO SEMSEC VALUES ('CSE7A', 7,'A');
INSERT INTO SEMSEC VALUES ('CSE7B', 7,'B');
INSERT INTO SEMSEC VALUES ('CSE7C', 7,'C');
INSERT INTO SEMSEC VALUES ('CSE6A', 6,'A');
INSERT INTO SEMSEC VALUES ('CSE6B', 6,'B');
INSERT INTO SEMSEC VALUES ('CSE6C', 6,'C');
INSERT INTO SEMSEC VALUES ('CSE5A', 5,'A');
INSERT INTO SEMSEC VALUES ('CSE5B', 5,'B');
INSERT INTO SEMSEC VALUES ('CSE5C', 5,'C');
INSERT INTO SEMSEC VALUES ('CSE4A', 4,'A');
INSERT INTO SEMSEC VALUES ('CSE4B', 4,'B');
INSERT INTO SEMSEC VALUES ('CSE4C', 4,'C');
INSERT INTO SEMSEC VALUES ('CSE3A', 3,'A');
INSERT INTO SEMSEC VALUES ('CSE3B', 3,'B');
INSERT INTO SEMSEC VALUES ('CSE3C', 3,'C');
INSERT INTO SEMSEC VALUES ('CSE2A', 2,'A');
INSERT INTO SEMSEC VALUES ('CSE2B', 2,'B');
INSERT INTO SEMSEC VALUES ('CSE2C', 2,'C');
INSERT INTO SEMSEC VALUES ('CSE1A', 1,'A');
INSERT INTO SEMSEC VALUES ('CSE1B', 1,'B');
INSERT INTO SEMSEC VALUES ('CSE1C', 1,'C');

INSERT INTO CLASS VALUES ('1DT13CS020','CSE8A');
INSERT INTO CLASS VALUES ('1DT13CS062','CSE8A');
INSERT INTO CLASS VALUES ('1DT13CS066','CSE8B');
INSERT INTO CLASS VALUES ('1DT13CS091','CSE8C');
INSERT INTO CLASS VALUES ('1DT14CS010','CSE7A');
INSERT INTO CLASS VALUES ('1DT14CS025','CSE7A');
INSERT INTO CLASS VALUES ('1DT14CS032','CSE7A');
INSERT INTO CLASS VALUES ('1DT15CS011','CSE4A');
INSERT INTO CLASS VALUES ('1DT15CS029','CSE4A');
INSERT INTO CLASS VALUES ('1DT15CS045','CSE4B');
INSERT INTO CLASS VALUES ('1DT15CS091','CSE4C');

INSERT INTO SUBJECT VALUES ('10CS81','ACA', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS82','SSM', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS83','NM', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS84','CC', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS85','PW', 8, 4);
INSERT INTO SUBJECT VALUES ('10CS71','OOAD', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS72','ECS', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS73','PTW', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS74','DWDM', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS75','JAVA', 7, 4);
INSERT INTO SUBJECT VALUES ('10CS76','SAN', 7, 4);
INSERT INTO SUBJECT VALUES ('15CS51', 'ME', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS52','CN', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS53','DBMS', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS54','ATC', 5, 4);
INSERT INTO SUBJECT VALUES ('15CS55','JAVA', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS56','AI', 5, 3);
INSERT INTO SUBJECT VALUES ('15CS41','M4', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS42','SE', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS43','DAA', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS44','MPMC', 4, 4);
INSERT INTO SUBJECT VALUES ('15CS45','OOC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS46','DC', 4, 3);
INSERT INTO SUBJECT VALUES ('15CS31','M3', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS32','ADE', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS33','DSA', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS34','CO', 3, 4);
INSERT INTO SUBJECT VALUES ('15CS35','USP', 3, 3);
INSERT INTO SUBJECT VALUES ('15CS36','DMS', 3, 3);

INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1DT13CS091','10CS81','CSE8C', 15, 16, 18);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1DT13CS091','10CS82','CSE8C', 12, 19, 14);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1DT13CS091','10CS83','CSE8C', 19, 15, 20);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1DT13CS091','10CS84','CSE8C', 20, 16, 19);
INSERT INTO IAMARKS (USN, SUBCODE, SSID, TEST1, TEST2, TEST3) VALUES ('1DT13CS091','10CS85','CSE8C', 15, 15, 12);
--Q1
SELECT S.*, SS.SEM, SS.SEC
FROM STUDENT S, SEMSEC SS, CLASS C
WHERE S.USN = C.USN AND
      SS.SSID = C.SSID AND
      SS.SEM = 4 AND
      SS.SEC = 'C';
--Q2
SELECT SS.SEM, SS.SEC, S.GENDER, COUNT(S.GENDER) AS COUNT
FROM STUDENT S, SEMSEC SS, CLASS C
WHERE S.USN = C.USN AND
SS.SSID = C.SSID
GROUP BY SS.SEM, SS.SEC, S.GENDER
ORDER BY SEM;

--Q3
CREATE VIEW STD
AS
SELECT TEST1, SUBCODE
FROM IAMARKS
WHERE USN = '1DT13CS091';

SELECT * FROM STD;

--Q4
UPDATE IAMARKS
SET FINALIA = GREATEST(TEST1+TEST2, TEST2+TEST3 , TEST1+TEST2)/2;
SELECT * FROM IAMARKS;

--Q5
SELECT S.USN, S.SNAME, S.ADDERSS, S.PHONE, S.GENDER,
       (CASE
            WHEN IA.FINALIA BETWEEN 17 AND 20 THEN 'OUTSTANDING'
            WHEN IA.FINALIA BETWEEN 12 AND 16 THEN 'AVERAGE'
            ELSE 'WEAK'
        END) AS CAT
FROM STUDENT S, SEMSEC SS, IAMARKS IA, SUBJECT SUB
WHERE S.USN = IA.USN AND
      SS.SSID = IA.SSID AND
      SUB.SUBCODE = IA.SUBCODE AND
      SUB.SEM = 8;

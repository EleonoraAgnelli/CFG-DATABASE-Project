CREATE DATABASE MEETINGS;

USE MEETINGS;



/* CREATE TABLE STATEMENTS */

CREATE TABLE Company(
    Company_ID    VARCHAR(20) NOT NULL PRIMARY KEY,
  	Company_name   VARCHAR(45) NOT NULL
);

CREATE TABLE Room(
    Room_ID VARCHAR(4) NOT NULL  PRIMARY KEY, 
	Room_name VARCHAR(255) NOT NULL, 
	Capacity INT NOT NULL
);

CREATE TABLE Employee(
    Employee_ID VARCHAR(4) NOT NULL  PRIMARY KEY,  
    FirstName VARCHAR(255) NOT NULL, 
    Lastname VARCHAR(255) NOT NULL, 
    Title_role VARCHAR(255) NOT NULL, 
    Email VARCHAR(255) NOT NULL, 
    Phone VARCHAR(11) NULL
);

CREATE TABLE Clients(
    Client_ID   VARCHAR(20) NOT NULL PRIMARY KEY,
    FirstName   VARCHAR(15) NOT NULL,
    Lastname VARCHAR(15) NOT NULL,
    Company_ID   VARCHAR(20) NOT NULL,
    Email VARCHAR(70) NOT NULL,
    Phone VARCHAR(11) NULL,
	FOREIGN KEY (Company_ID) REFERENCES Company (Company_ID)
);

CREATE TABLE Meeting(
    Meeting_ID   VARCHAR(4) NOT NULL PRIMARY KEY,
    Date_of_meeting DATE NOT NULL,
    Start_time TIME NOT NULL,
    End_time   TIME NOT NULL,
    Number_of_partecipants INT NOT NULL,
    Room_ID VARCHAR(4) NOT NULL,
    Client_ID VARCHAR(20) NOT NULL,  
    Employee_ID VARCHAR(4) NOT NULL, 
    FOREIGN KEY (Room_ID) REFERENCES Room (Room_ID),
    FOREIGN KEY (Client_ID) REFERENCES Clients (Client_ID),
    FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID)
);



/* INSERT STATEMENTS */

INSERT INTO Company VALUES
	("CP01", "Milk & Co"),
    ("CP02", "PurpleStar"),
    ("CP03", "Flower Arranged"),
    ("CP04", "Dunder Muffin"),
    ("CP05", "Brook 9-9"),
    ("CP06", "Nook's"),
    ("CP07", "Hades Undercrib"),
    ("CP08", "Life Star"),
    ("CP09", "The Mandorin"),
    ("CP10", "Devil's Share");
    
INSERT INTO Room VALUES
	("R001", "London Bridge", "10"),
    ("R002", "Picadilly Circus", "30"),
    ("R003", "Oxford Circus", "20"),
    ("R004", "King's Cross", "30"),
    ("R005", "Baker Street", "10"),
    ("R006", "Waterloo Station", "10"),
    ("R007", "Tower of London", "20"),
    ("R008", "Tower Bridge", "15"),
    ("R009", "Carnaby Street", "15"),
    ("R010", "Paddington", "20"),
    ("R555", "Store Room", "0");
    
INSERT INTO Employee VALUES
	("E001", "Hugo", "Bolt", "Sales Representative", "hugobolt@work.uk", "01111111111"),
    ("E002", "Hayden", "Ruby", "Marketing Specialist", "haydenruby@work.uk", "02222222222"),
    ("E003", "Toji", "Fuji", "Marketing Consultant", "tojifuji@work.uk", "03333333333"),
    ("E004", "Pritt", "White", "Customer Service Representative", "prittwhite@work.uk", "04444444444"),
    ("E005", "Olivia", "Asiago", "IT technician", "oliviaasiago@work.uk", "05555555555"),
    ("E006", "Astrid", "Comte", "Business Analyst", "astridcomte@work.uk", "06666666666"),
    ("E007", "Doriana", "Deer", "Executive Assistant", "dorianadeer@work.uk", "07777777777"),
    ("E008", "Kinga", "Hill", "Marketing Specialist", "kingahill@work.uk", "08888888888"),
    ("E009", "Jeahun", "Hill", "Product Manager", "jeahunhill@work.uk", "09999999999"),
    ("E010", "Sam", "Haitch", "Intern", "samhaitch@work.uk", "01010101010");

INSERT INTO Clients VALUES
	("CL01", "Souris", "Ratatuille", "CP01", "sourisratatuille@milkco.uk", NULL),
    ("CL02", "Giorno", "Giova", "CP02", "giornogiova@purplestar.uk", NULL),
    ("CL03", "Toro", "Kujo", "CP02", "torokujo@purplestar.uk", "03030303030"),
    ("CL04", "Daphne", "Viola", "CP03", "daphneviola@flowerarranged.uk", NULL),
    ("CL05", "Pam", "Rose", "CP04", "pamrose@dundermuffin.uk", "05050505050"),
    ("CL06", "Jim", "Funny", "CP04", "jimfunny@dundermuffin.uk", NULL),
    ("CL07", "Otto", "Pongo", "CP05", "ottopongo@brook99.uk", "07070707070"),
    ("CL08", "Tommy", "Nook", "CP06", "tommynook@nooks.uk", NULL),
    ("CL09", "Timmy", "Nook", "CP06", "timmynook@nooks.uk", "09090909090"),
    ("CL10", "Tyler", "Hyde", "CP07", "tylerhyde@hadescrib.uk", NULL),
    ("CL11", "Zagareus", "Hades", "CP07", "zagareushades@hadescrib.uk", NULL),
    ("CL12", "Adam", "Ren", "CP08", "adamren@lifestar.uk", NULL),
    ("CL13", "Kylo", "Driver", "CP08", "kylodriver@lifestar.uk", "01313131313"),
    ("CL14", "Darty", "Skyguy", "CP08", "dartyskyguy@lifestar.uk", "01414141414"),
    ("CL15", "Mando", "Fett", "CP09", "mandofett@themandorin.uk", NULL),
    ("CL16", "Venti", "Bardo", "CP10", "ventibardo@devilshare.uk", NULL),
    ("CL17", "Diluc", "Saft", "CP10", "dilucsaft@devilshare.uk", "01717171717");

INSERT INTO Meeting VALUES 
    ("M001", "2022-02-01", "13:00", "15:00", "15", "R008", "CL02", "E008"),
    ("M002", "2022-03-22", "12:00", "16:00", "30", "R002", "CL04", "E006"),
    ("M003", "2022-04-22", "16:00", "17:00", "21", "R004", "CL05", "E004"),
    ("M004", "2022-05-14", "12:00", "15:00", "9", "R007", "CL06", "E009"),
    ("M005", "2022-08-09", "9:00", "9:30", "5", "R005", "CL11", "E010"), 
    ("M006", "2022-10-17", "17:17", "19:17", "10", "R001", "CL09", "E003"),
    ("M007", "2022-11-19", "10:00", "14:00", "14", "R009", "CL03", "E007"),
    ("M008", "2022-11-22", "17:44", "19:00", "20", "R006", "CL07", "E001"),
    ("M009", "2023-01-01", "10:00", "12:00", "25", "R004", "CL08", "E005"),
    ("M010", "2023-01-03", "14:00", "15:30", "12", "R001", "CL01", "E002"),
    ("M011", "2023-02-05", "16:00", "17:00", "7", "R001", "CL15", "E002");



/* -------------------------------------------------------------------
CREATE A VIEW THAT COMBINES MULTIPLE TABLES USING ANY TYPE OF JOINS
----------------------------------------------------------------------
creates a view showing solely the clients' names and the name of the company they work for */
CREATE VIEW client_company_view AS 
SELECT T1.FirstName, T1.LastName, T2.Company_name FROM Clients T1
INNER JOIN Company T2 ON T1.Company_ID = T2.Company_ID;

SELECT * FROM client_company_view;



/* -------------------------------------------------------------------
CREATE A STORED FUNCTION
----------------------------------------------------------------------
Each day the Reception desk needs to know all the meetings happening on the day,
or they might need to check past/future meetings on a specific day */
DELIMITER //
CREATE FUNCTION meetings_happening(Date_of_meeting DATE) 
RETURNS VARCHAR(300)
DETERMINISTIC
BEGIN
  DECLARE output VARCHAR(300);
  SELECT CONCAT('TIME: ', T1.Start_time, ' - ', T1.End_time, ' CLIENT: ', T2.FirstName, ' ', T2.Lastname, ' FROM COMPANY: ', T3.Company_name, ' IN ROOM: ', T4.Room_name)
    INTO output
    FROM Meeting T1
    INNER JOIN Clients T2 ON T1.Client_ID = T2.Client_ID
    INNER JOIN Company T3 ON T3.Company_ID = T2.Company_ID
    INNER JOIN Room T4 ON T1.Room_ID = T4.Room_ID
    WHERE T1.Date_of_meeting = Date_of_meeting;
  RETURN output;
END//
DELIMITER ;

SELECT meetings_happening('2022-04-22');



/* -------------------------------------------------------------------
MULTIPLE TABLE STATEMENTS (subqueries)
----------------------------------------------------------------------
Show which meetings took place in London Bridge from the most recent to the oldest. */
SELECT Meeting_ID, Date_of_meeting FROM Meeting WHERE Room_ID IN (SELECT Room_ID FROM Room WHERE Room_name = "London Bridge")
ORDER BY Date_of_meeting DESC;


/* Show which meeting was held with the company "Brook 9-9".  */
SELECT * FROM Meeting
WHERE Client_ID IN (SELECT Client_ID FROM Clients
                    WHERE Company_ID IN (SELECT Company_ID FROM Company WHERE Company_name = "Brook 9-9"));


/* Count how many clients the company is in contact with from the company which ID is "CP06". */
SELECT COUNT(Client_ID) AS N_of_Clients_working_for_Nooks FROM Clients
WHERE Company_ID IN (SELECT Company_ID FROM Company WHERE Company_ID = "CP06");


/* Show which clients (their IDs and names) had a meeting in November. */
SELECT Client_ID, FirstName, Lastname
FROM Clients
WHERE Client_ID IN (SELECT Client_ID FROM Meeting WHERE
                    MONTH(Date_of_meeting) = 11);



/* -------------------------------------------------------------------
EXTRA: Group by - Having
----------------------------------------------------------------------
Finds what companies have had more than meeting and show frequency of meetings they had. */
SELECT Company.Company_name, COUNT(*) AS number_of_meetings
FROM Meeting
JOIN Clients ON Meeting.Client_ID = Clients.Client_ID
JOIN Company ON Clients.Company_ID = Company.Company_ID
GROUP BY Company.Company_name
HAVING COUNT(Meeting.Meeting_ID) > 1;






/* DELETE FUNCTION AND VIEW
DROP FUNCTION meetings_happening;
DROP VIEW client_company_view;
*/



/* DROP TABLES
DROP TABLE Meeting;
DROP TABLE Clients;
DROP TABLE Employee;
DROP TABLE Room;
DROP TABLE Company;
*/

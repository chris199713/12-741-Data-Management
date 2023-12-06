/*
CREATE DATABASE covid;*/
/*CREATE TABLE COUNTY(
count_Name VARCHAR(20) PRIMARY KEY NOT NULL,
Population INT,
Democratic_Vote INT,
Republican_Vote INT,
represent_Party VARCHAR(5),
county_FIPS INT
);
CREATE TABLE Vax(
county_Name VARCHAR(20) NOT NULL,
Record_Date date,
PRIMARY KEY (county_Name,Record_Date ),
partially_Vaxed INT,
fully_Vaxed INT,
additional_Dose INT
);
CREATE TABLE Cases(
county_Name VARCHAR(20) NOT NULL,
Record_Date date,
PRIMARY KEY (county_Name,Record_Date ),
New_case INT,
Hospitalized INT,
Deaths INT
);*/
/*use project;*/

/*First Query
SELECT Vax.county_Name,SUM(Vax.fully_Vaxed) AS fully_Vaxed, County.Population,
SUM(Vax.fully_Vaxed)/County.Population AS Vax_Rate, County.represent_Party
FROM Vax
INNER JOIN County ON Vax.county_Name=County.county_Name
GROUP BY Vax.county_Name
ORDER BY Vax_Rate DESC;*/

/*Second Query
SELECT Cases.county_Name,1-SUM(Cases.Deaths)/SUM(Cases.Hospitalized) AS recovery_Rate
FROM Cases
GROUP BY Cases.county_Name
ORDER BY recovery_Rate DESC
LIMIT 10;*/

/*Third Query for Time Series Analysis
SELECT *
FROM Cases
WHERE county_Name='Montour' OR county_Name='Washington'OR county_Name='Indiana' OR county_Name='Philadelphia'
ORDER BY county_Name,Record_Date DESC;*/


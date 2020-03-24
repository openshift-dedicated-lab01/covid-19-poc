DROP TABLE IF EXISTS statistics;
DROP TABLE IF EXISTS confirmedByDay;
DROP TABLE IF EXISTS recoveredByDay;
DROP TABLE IF EXISTS deathsByDay;
 
 --https://corona-stats.online/?format=json
 
CREATE TABLE statistics (
  statisticsId INT NOT NULL AUTO_INCREMENT,
  ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
  country VARCHAR(50) DEFAULT NULL,
  province VARCHAR(50) DEFAULT NULL,
  countryCode VARCHAR(2) DEFAULT NULL,
  confirmed VARCHAR(20) DEFAULT NULL,
  recovered VARCHAR(20) DEFAULT NULL,
  deaths VARCHAR(20) DEFAULT NULL,
  confirmedByDay INT,
  recoveredByDay INT,
  deathsByDay INT,
  lastUpdated VARCHAR(50) DEFAULT NULL,
  active VARCHAR(20) DEFAULT NULL,
  mortalityPer VARCHAR(20) DEFAULT NULL,
  recoveredPer VARCHAR(20) DEFAULT NULL,
  CONSTRAINT statistics_pk PRIMARY KEY (statisticsId)
);

CREATE TABLE confirmedByDay (
  confirmedByDayId INT NOT NULL AUTO_INCREMENT,
  confirmedByDay INT,
  CONSTRAINT confirmedByDay_pk PRIMARY KEY (confirmedByDayId)
);
  
CREATE TABLE recoveredByDay (
  recoveredByDayId INT NOT NULL AUTO_INCREMENT,
  recoveredByDay INT,
  CONSTRAINT recoveredByDay_pk PRIMARY KEY (recoveredByDayId)
);

CREATE TABLE deathsByDay (
  deathsByDayId INT NOT NULL AUTO_INCREMENT,
  deathsByDay INT,
  CONSTRAINT deathsByDay_pk PRIMARY KEY (deathsByDayId)
);
   
INSERT INTO statistics (country, province, countryCode, confirmed, recovered, deaths, confirmedByDay, recoveredByDay, deathsByDay, lastUpdated, active, mortalityPer, recoveredPer) VALUES
  ('Canada', 'Québec', 'CA', '345','124','34',0,0,0,'2020-03-21','4','5','6');
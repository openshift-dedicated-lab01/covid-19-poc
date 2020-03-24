DROP TABLE IF EXISTS statistics;
 
CREATE TABLE statistics (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  country VARCHAR(250) NOT NULL,
  province VARCHAR(250) NOT NULL,
  countryCode VARCHAR(250) DEFAULT NULL,
  confirmed VARCHAR(250) DEFAULT NULL,
  recovered VARCHAR(250) DEFAULT NULL,
  deaths VARCHAR(250) DEFAULT NULL,
  confirmedByDay INT,
  recoveredByDay INT,
  deathsByDay INT,
  lastUpdated VARCHAR(250) DEFAULT NULL,
  active VARCHAR(250) DEFAULT NULL,
  mortalityPer VARCHAR(250) DEFAULT NULL,
  recoveredPer VARCHAR(250) DEFAULT NULL 
);
 
INSERT INTO statistics (country, province, countryCode, confirmed, recovered, deaths, confirmedByDay, recoveredByDay, deathsByDay, lastUpdated, active, mortalityPer, recoveredPer) VALUES
  ('Canada', 'Québec', 'CA', '345','124','34',0,0,0,'2020-03-21','4','5','6');
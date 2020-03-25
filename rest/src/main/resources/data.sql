--SET foreign_key_checks = 0;
--ALTER TABLE confirmed_by_day DROP FOREIGN KEY statistic_id_fk;
--DROP TABLE IF EXISTS confirmed_by_day;
--ALTER TABLE recovered_by_day 
--	DROP FOREIGN KEY statistic_id_fk;
--DROP TABLE IF EXISTS recovered_by_day;
--ALTER TABLE deaths_by_day 
--	DROP FOREIGN KEY statistic_id_fk;
--DROP TABLE IF EXISTS deaths_by_day;
--DROP TABLE IF EXISTS statistic;
--SET foreign_key_checks = 1;
 
 --https://corona-stats.online/?format=json
 
-- CREATE TABLE statistic (
--   statistic_id BIGINT NOT NULL AUTO_INCREMENT,
--   ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, 
--   country VARCHAR(50) DEFAULT NULL,
--   province VARCHAR(50) DEFAULT NULL,
--   country_code VARCHAR(2) DEFAULT NULL,
--   confirmed VARCHAR(20) DEFAULT NULL,
--   recovered VARCHAR(20) DEFAULT NULL,
--   deaths VARCHAR(20) DEFAULT NULL,
--   confirmed_by_day INT,
--   recovered_by_day INT,
--   deaths_by_day INT,
--   last_updated VARCHAR(50) DEFAULT NULL,
--   active VARCHAR(20) DEFAULT NULL,
--   mortality_per VARCHAR(20) DEFAULT NULL,
--   recovered_per VARCHAR(20) DEFAULT NULL,
--   CONSTRAINT statistic_pk PRIMARY KEY (statistic_id)
-- );
-- 
-- CREATE TABLE confirmed_by_day (
--   confirmed_by_dayId BIGINT NOT NULL AUTO_INCREMENT,
--   statistic_id BIGINT NOT NULL,
--   confirmed_by_day INT,
--   CONSTRAINT confirmed_by_day_pk PRIMARY KEY (confirmed_by_dayId),
--   CONSTRAINT statistic_id_fk FOREIGN KEY (statistic_id)
--         REFERENCES statistic(statistic_id)
--         ON DELETE CASCADE
-- );
--   
-- CREATE TABLE recovered_by_day (
--   recovered_by_dayId BIGINT NOT NULL AUTO_INCREMENT,
--   statistic_id BIGINT NOT NULL,
--   recovered_by_day INT,
--   CONSTRAINT recovered_by_day_pk PRIMARY KEY (recovered_by_dayId),
--   CONSTRAINT statistic_id_fk FOREIGN KEY (statistic_id)
--         REFERENCES statistic(statistic_id)
--         ON DELETE CASCADE
-- );

-- CREATE TABLE deaths_by_day (
--   deaths_by_day_id BIGINT NOT NULL AUTO_INCREMENT,
--   statistic_id BIGINT NOT NULL,
--   deaths_by_day INT,
--   CONSTRAINT deaths_by_day_pk PRIMARY KEY (deaths_by_dayId),
--   CONSTRAINT statistic_id_fk FOREIGN KEY (statistic_id)
--         REFERENCES statistic(statistic_id)
--         ON DELETE CASCADE
-- );

   
--INSERT INTO statistic (country, province, country_code, confirmed, recovered, deaths, confirmed_by_day, recovered_by_day, deaths_by_day, last_updated, active, mortality_per, recovered_per) VALUES
--  ('Canada', 'Québec', 'CA', '345','124','34',0,0,0,'2020-03-21','4','5','6');

INSERT INTO statistic (country, province, country_code, confirmed, recovered, deaths, last_updated, active, mortality_per, recovered_per) VALUES
  ('Canada', 'Québec', 'CA', '345','124','34','2020-03-21','4','5','6');
  
INSERT INTO statistic (country, province, country_code, confirmed, recovered, deaths, last_updated, active, mortality_per, recovered_per) VALUES
  ('Canada', 'Manitoba', 'CA', '345','124','34','2020-03-21','4','5','6');
  
INSERT INTO statistic (country, province, country_code, confirmed, recovered, deaths, last_updated, active, mortality_per, recovered_per) VALUES
  ('Canada', 'Ontario', 'CA', '345','124','34','2020-03-21','4','5','6');
  
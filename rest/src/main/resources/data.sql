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
   
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Italy', '', 'IT', '69176','6820','2020-03-25T22:26:29.161420Z','9.86');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Hubei', 'CN', '67801','3160','2020-03-25T22:26:29.161420Z','4.66');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('US', '', 'US', '53740','706','2020-03-25T22:26:29.161420Z','1.31');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Spain', '', 'ES', '39885','2808','2020-03-25T22:26:29.161420Z','7.04');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Germany', '', 'DE', '32986','157','2020-03-25T22:26:29.161420Z','0.48');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Iran', '', 'IR', '24811','1934','2020-03-25T22:26:29.161420Z','7.79');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', '', 'FR', '22304','1100','2020-03-25T22:26:29.161420Z','4.93');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Switzerland', '', 'CH', '9877','122','2020-03-25T22:26:29.161420Z','1.24');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Korea, South', '', 'KR', '9037','120','2020-03-25T22:26:29.161420Z','1.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', '', 'GB', '8077','422','2020-03-25T22:26:29.161420Z','5.22');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Netherlands', '', 'NL', '5560','276','2020-03-25T22:26:29.161420Z','4.96');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Austria', '', 'AT', '5283','28','2020-03-25T22:26:29.161420Z','0.53');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Belgium', '', 'BE', '4269','122','2020-03-25T22:26:29.161420Z','2.86');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Norway', '', 'NO', '2863','12','2020-03-25T22:26:29.161420Z','0.42');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Portugal', '', 'PT', '2362','33','2020-03-25T22:26:29.161420Z','1.40');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Sweden', '', 'SE', '2286','36','2020-03-25T22:26:29.161420Z','1.57');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Brazil', '', 'BR', '2247','46','2020-03-25T22:26:29.161420Z','2.05');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Turkey', '', 'TR', '1872','44','2020-03-25T22:26:29.161420Z','2.35');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Malaysia', '', 'MY', '1624','16','2020-03-25T22:26:29.161420Z','0.99');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Denmark', '', 'DK', '1591','32','2020-03-25T22:26:29.161420Z','2.01');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Guangdong', 'CN', '1428','8','2020-03-25T22:26:29.161420Z','0.56');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Czechia', '', 'CZ', '1394','3','2020-03-25T22:26:29.161420Z','0.22');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Ireland', '', 'IE', '1329','7','2020-03-25T22:26:29.161420Z','0.53');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Henan', 'CN', '1274','22','2020-03-25T22:26:29.161420Z','1.73');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Zhejiang', 'CN', '1240','1','2020-03-25T22:26:29.161420Z','0.08');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Israel', '', 'IL', '1238','3','2020-03-25T22:26:29.161420Z','0.24');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Japan', '', 'JP', '1193','43','2020-03-25T22:26:29.161420Z','3.60');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Luxembourg', '', 'LU', '1099','8','2020-03-25T22:26:29.161420Z','0.73');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Ecuador', '', 'EC', '1082','27','2020-03-25T22:26:29.161420Z','2.50');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Hunan', 'CN', '1018','4','2020-03-25T22:26:29.161420Z','0.39');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Quebec', 'CA', '1013','4','2020-03-25T22:26:29.161420Z','0.39');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Anhui', 'CN', '990','6','2020-03-25T22:26:29.161420Z','0.61');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Pakistan', '', 'PK', '972','7','2020-03-25T22:26:29.161420Z','0.72');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Jiangxi', 'CN', '936','1','2020-03-25T22:26:29.161420Z','0.11');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Chile', '', 'CL', '922','2','2020-03-25T22:26:29.161420Z','0.22');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Poland', '', 'PL', '901','10','2020-03-25T22:26:29.161420Z','1.11');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Thailand', '', 'TH', '827','4','2020-03-25T22:26:29.161420Z','0.48');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'New South Wales', 'AU', '818','7','2020-03-25T22:26:29.161420Z','0.86');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Romania', '', 'RO', '794','11','2020-03-25T22:26:29.161420Z','1.39');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Finland', '', 'FI', '792','1','2020-03-25T22:26:29.161420Z','0.13');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Shandong', 'CN', '768','7','2020-03-25T22:26:29.161420Z','0.91');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Saudi Arabia', '', 'SA', '767','1','2020-03-25T22:26:29.161420Z','0.13');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Greece', '', 'GR', '743','20','2020-03-25T22:26:29.161420Z','2.69');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Diamond Princess', '', 'XX', '712','10','2020-03-25T22:26:29.161420Z','1.40');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Indonesia', '', 'ID', '686','55','2020-03-25T22:26:29.161420Z','8.02');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Iceland', '', 'IS', '648','2','2020-03-25T22:26:29.161420Z','0.31');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Jiangsu', 'CN', '636','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'British Columbia', 'CA', '617','13','2020-03-25T22:26:29.161420Z','2.11');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Ontario', 'CA', '588','7','2020-03-25T22:26:29.161420Z','1.19');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Chongqing', 'CN', '578','6','2020-03-25T22:26:29.161420Z','1.04');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Beijing', 'CN', '558','8','2020-03-25T22:26:29.161420Z','1.43');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Singapore', '', 'SG', '558','2','2020-03-25T22:26:29.161420Z','0.36');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('South Africa', '', 'ZA', '554','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Philippines', '', 'PH', '552','35','2020-03-25T22:26:29.161420Z','6.34');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Sichuan', 'CN', '545','3','2020-03-25T22:26:29.161420Z','0.55');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('India', '', 'IN', '536','10','2020-03-25T22:26:29.161420Z','1.87');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Qatar', '', 'QA', '526','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Russia', '', 'RU', '495','1','2020-03-25T22:26:29.161420Z','0.20');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Heilongjiang', 'CN', '484','13','2020-03-25T22:26:29.161420Z','2.69');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Slovenia', '', 'SI', '480','4','2020-03-25T22:26:29.161420Z','0.83');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Peru', '', 'PE', '416','7','2020-03-25T22:26:29.161420Z','1.68');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Shanghai', 'CN', '414','4','2020-03-25T22:26:29.161420Z','0.97');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Victoria', 'AU', '411','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Egypt', '', 'EG', '402','20','2020-03-25T22:26:29.161420Z','4.98');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Queensland', 'AU', '397','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bahrain', '', 'BH', '392','3','2020-03-25T22:26:29.161420Z','0.77');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Argentina', '', 'AR', '387','6','2020-03-25T22:26:29.161420Z','1.55');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Hong Kong', 'CN', '386','4','2020-03-25T22:26:29.161420Z','1.04');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Croatia', '', 'HR', '382','1','2020-03-25T22:26:29.161420Z','0.26');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Colombia', '', 'CO', '378','3','2020-03-25T22:26:29.161420Z','0.79');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Estonia', '', 'EE', '369','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Mexico', '', 'MX', '367','4','2020-03-25T22:26:29.161420Z','1.09');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Alberta', 'CA', '359','1','2020-03-25T22:26:29.161420Z','0.28');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Panama', '', 'PA', '345','6','2020-03-25T22:26:29.161420Z','1.74');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Hebei', 'CN', '319','6','2020-03-25T22:26:29.161420Z','1.88');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Fujian', 'CN', '318','1','2020-03-25T22:26:29.161420Z','0.31');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Lebanon', '', 'LB', '318','4','2020-03-25T22:26:29.161420Z','1.26');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Iraq', '', 'IQ', '316','27','2020-03-25T22:26:29.161420Z','8.54');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Dominican Republic', '', 'DO', '312','6','2020-03-25T22:26:29.161420Z','1.92');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Serbia', '', 'RS', '303','3','2020-03-25T22:26:29.161420Z','0.99');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Algeria', '', 'DZ', '264','19','2020-03-25T22:26:29.161420Z','7.20');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Guangxi', 'CN', '254','2','2020-03-25T22:26:29.161420Z','0.79');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Armenia', '', 'AM', '249','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Shaanxi', 'CN', '249','3','2020-03-25T22:26:29.161420Z','1.20');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Arab Emirates', '', 'AE', '248','2','2020-03-25T22:26:29.161420Z','0.81');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bulgaria', '', 'BG', '218','3','2020-03-25T22:26:29.161420Z','1.38');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Taiwan*', '', 'TW', '215','2','2020-03-25T22:26:29.161420Z','0.93');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Lithuania', '', 'LT', '209','2','2020-03-25T22:26:29.161420Z','0.96');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Slovakia', '', 'SK', '204','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Latvia', '', 'LV', '197','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Kuwait', '', 'KW', '191','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Hungary', '', 'HU', '187','9','2020-03-25T22:26:29.161420Z','4.81');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('San Marino', '', 'SM', '187','21','2020-03-25T22:26:29.161420Z','11.23');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Costa Rica', '', 'CR', '177','2','2020-03-25T22:26:29.161420Z','1.13');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Yunnan', 'CN', '176','2','2020-03-25T22:26:29.161420Z','1.14');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Western Australia', 'AU', '175','1','2020-03-25T22:26:29.161420Z','0.57');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'South Australia', 'AU', '170','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Morocco', '', 'MA', '170','5','2020-03-25T22:26:29.161420Z','2.94');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Hainan', 'CN', '168','6','2020-03-25T22:26:29.161420Z','3.57');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bosnia and Herzegovina', '', 'BA', '166','3','2020-03-25T22:26:29.161420Z','1.81');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Andorra', '', 'AD', '164','1','2020-03-25T22:26:29.161420Z','0.61');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Uruguay', '', 'UY', '162','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('New Zealand', '', 'NZ', '155','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Jordan', '', 'JO', '154','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('North Macedonia', '', 'MK', '148','2','2020-03-25T22:26:29.161420Z','1.35');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Guizhou', 'CN', '146','2','2020-03-25T22:26:29.161420Z','1.37');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Tianjin', 'CN', '145','3','2020-03-25T22:26:29.161420Z','2.07');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Gansu', 'CN', '136','2','2020-03-25T22:26:29.161420Z','1.47');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Shanxi', 'CN', '134','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Vietnam', '', 'VN', '134','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Liaoning', 'CN', '127','2','2020-03-25T22:26:29.161420Z','1.57');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Moldova', '', 'MD', '125','1','2020-03-25T22:26:29.161420Z','0.80');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cyprus', '', 'CY', '124','3','2020-03-25T22:26:29.161420Z','2.42');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Albania', '', 'AL', '123','5','2020-03-25T22:26:29.161420Z','4.07');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Denmark', 'Faroe Islands', 'DK', '122','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Burkina Faso', '', 'BF', '114','4','2020-03-25T22:26:29.161420Z','3.51');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Tunisia', '', 'TN', '114','4','2020-03-25T22:26:29.161420Z','3.51');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Malta', '', 'MT', '110','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Brunei', '', 'BN', '104','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Sri Lanka', '', 'LK', '102','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Ukraine', '', 'UA', '97','3','2020-03-25T22:26:29.161420Z','3.09');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'Reunion', 'FR', '94','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Jilin', 'CN', '93','1','2020-03-25T22:26:29.161420Z','1.08');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cambodia', '', 'KH', '91','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Azerbaijan', '', 'AZ', '87','1','2020-03-25T22:26:29.161420Z','1.15');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Senegal', '', 'SN', '86','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Oman', '', 'OM', '84','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Venezuela', '', 'VE', '84','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Belarus', '', 'BY', '81','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Xinjiang', 'CN', '76','3','2020-03-25T22:26:29.161420Z','3.95');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Inner Mongolia', 'CN', '75','1','2020-03-25T22:26:29.161420Z','1.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Ningxia', 'CN', '75','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Afghanistan', '', 'AF', '74','1','2020-03-25T22:26:29.161420Z','1.35');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cote d''Ivoire', '', 'CI', '73','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Saskatchewan', 'CA', '72','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Kazakhstan', '', 'KZ', '72','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Georgia', '', 'GE', '70','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cameroon', '', 'CM', '66','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'Guadeloupe', 'FR', '62','1','2020-03-25T22:26:29.161420Z','1.61');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('The West Bank and Gaza', '', 'XX', '59','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'Martinique', 'FR', '57','1','2020-03-25T22:26:29.161420Z','1.75');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Trinidad and Tobago', '', 'TT', '57','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Ghana', '', 'GH', '53','2','2020-03-25T22:26:29.161420Z','3.77');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Nova Scotia', 'CA', '51','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Liechtenstein', '', 'LI', '51','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Uzbekistan', '', 'UZ', '50','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cuba', '', 'CU', '48','1','2020-03-25T22:26:29.161420Z','2.08');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Montenegro', '', 'ME', '47','1','2020-03-25T22:26:29.161420Z','2.13');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Congo (Kinshasa)', '', 'CD', '45','2','2020-03-25T22:26:29.161420Z','4.44');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Nigeria', '', 'NG', '44','1','2020-03-25T22:26:29.161420Z','2.27');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Kyrgyzstan', '', 'KG', '42','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Mauritius', '', 'MU', '42','2','2020-03-25T22:26:29.161420Z','4.76');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Rwanda', '', 'RW', '40','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Australian Capital Territory', 'AU', '39','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bangladesh', '', 'BD', '39','4','2020-03-25T22:26:29.161420Z','10.26');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'Mayotte', 'FR', '36','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Channel Islands', 'GB', '36','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Newfoundland and Labrador', 'CA', '35','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Honduras', '', 'HN', '30','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bolivia', '', 'BO', '29','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Tasmania', 'AU', '28','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Paraguay', '', 'PY', '27','2','2020-03-25T22:26:29.161420Z','7.41');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Macau', 'CN', '25','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'French Polynesia', 'FR', '25','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Kenya', '', 'KE', '25','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'French Guiana', 'FR', '23','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Monaco', '', 'MC', '23','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Isle of Man', 'GB', '23','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Manitoba', 'CA', '21','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Guatemala', '', 'GT', '21','1','2020-03-25T22:26:29.161420Z','4.76');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Jamaica', '', 'JM', '21','1','2020-03-25T22:26:29.161420Z','4.76');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Togo', '', 'TG', '20','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Barbados', '', 'BB', '18','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'New Brunswick', 'CA', '18','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Qinghai', 'CN', '18','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Madagascar', '', 'MG', '17','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Gibraltar', 'GB', '15','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Grand Princess', 'CA', '13','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Maldives', '', 'MV', '13','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Ethiopia', '', 'ET', '12','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Netherlands', 'Aruba', 'NL', '12','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Tanzania', '', 'TZ', '12','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'New Caledonia', 'FR', '10','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Mongolia', '', 'MN', '10','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Equatorial Guinea', '', 'GQ', '9','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Uganda', '', 'UG', '9','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'St Martin', 'FR', '8','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Haiti', '', 'HT', '7','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Namibia', '', 'NA', '7','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Seychelles', '', 'SC', '7','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Suriname', '', 'SR', '7','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Australia', 'Northern Territory', 'AU', '6','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Benin', '', 'BJ', '6','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Gabon', '', 'GA', '6','1','2020-03-25T22:26:29.161420Z','16.67');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Netherlands', 'Curacao', 'NL', '6','1','2020-03-25T22:26:29.161420Z','16.67');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Bermuda', 'GB', '6','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Cayman Islands', 'GB', '6','1','2020-03-25T22:26:29.161420Z','16.67');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bahamas', '', 'BS', '5','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Denmark', 'Greenland', 'DK', '5','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('El Salvador', '', 'SV', '5','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Guyana', '', 'GY', '5','1','2020-03-25T22:26:29.161420Z','20.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Congo (Brazzaville)', '', 'CG', '4','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Eswatini', '', 'SZ', '4','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Fiji', '', 'FJ', '4','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Guinea', '', 'GN', '4','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Holy See', '', 'VA', '4','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Angola', '', 'AO', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Antigua and Barbuda', '', 'AG', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Cabo Verde', '', 'CV', '3','1','2020-03-25T22:26:29.161420Z','33.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Canada', 'Prince Edward Island', 'CA', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Central African Republic', '', 'CF', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Chad', '', 'TD', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Djibouti', '', 'DJ', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('France', 'Saint Barthelemy', 'FR', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Gambia', '', 'GM', '3','1','2020-03-25T22:26:29.161420Z','33.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Liberia', '', 'LR', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Niger', '', 'NE', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Saint Lucia', '', 'LC', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Sudan', '', 'SD', '3','1','2020-03-25T22:26:29.161420Z','33.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Zambia', '', 'ZM', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Zimbabwe', '', 'ZW', '3','1','2020-03-25T22:26:29.161420Z','33.33');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Mozambique', '', 'MZ', '3','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Bhutan', '', 'BT', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Mauritania', '', 'MR', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Nepal', '', 'NP', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Netherlands', 'Sint Maarten', 'NL', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Nicaragua', '', 'NI', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Dominica', '', 'DM', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Laos', '', 'LA', '2','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('China', 'Tibet', 'CN', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Eritrea', '', 'ER', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Papua New Guinea', '', 'PG', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Saint Vincent and the Grenadines', '', 'VC', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Somalia', '', 'SO', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('United Kingdom', 'Montserrat', 'GB', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Grenada', '', 'GD', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Syria', '', 'SY', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Timor-Leste', '', 'TL', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Belize', '', 'BZ', '1','0','2020-03-25T22:26:29.161420Z','0.00');
INSERT INTO statistic (country, province, country_code, confirmed, deaths, last_updated, mortality_per) VALUES
  ('Libya', '', 'LY', '1','0','2020-03-25T22:26:29.161420Z','0.00');
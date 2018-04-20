USE cars;
DROP TABLE IF EXISTS Corvettes;
DROP TABLE IF EXISTS States;
DROP TABLE IF EXISTS Corvettes_equipment;
DROP TABLE IF EXISTS Equipment;

CREATE TABLE corvettes (
  Vette_id INT(11) NOT NULL AUTO_INCREMENT,
  Body_Style CHAR(12),
  Miles FLOAT,
  Year INT(4),
  State INT(4) NOT NULL,
  PRIMARY KEY (Vette_id)
);

CREATE TABLE Equipment (
  Equip_id INT(11) NOT NULL AUTO_INCREMENT,
  Equip CHAR(10),
  PRIMARY KEY (Equip_id)
);

CREATE TABLE states (
  State_id INT(11) NOT NULL AUTO_INCREMENT,
  State CHAR(20),
  PRIMARY KEY (State_id)
);

CREATE TABLE corvettes_equipment ( 
  Vette_id INT(4) NOT NULL,
  Equip INT(4)
);


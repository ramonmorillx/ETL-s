 -- Creo las tablas de destino
CREATE TABLE IF NOT EXISTS Agestandardizedsuiciderates (
country VARCHAR(100) NOT NULL PRIMARY KEY,
Sex 	VARCHAR(100),
'2016' 	DECIMAL(3,1),
'2015' 	DECIMAL(3,1),
'2010' 	DECIMAL(3,1),
'2000' 	DECIMAL(3,1)
);

CREATE TABLE IF NOT EXISTS Crudesuiciderates (
country 	VARCHAR(100) NOT NULL PRIMARY KEY,
Sex 		VARCHAR(100),
'80_above' 	DECIMAL(3,1),
'70to79' 	DECIMAL(3,1),
'60to69'	DECIMAL(3,1),
'50to59' 	DECIMAL(3,1),
'40to49' 	DECIMAL(3,1),
'30to39' 	DECIMAL(3,1),
'20to29' 	DECIMAL(3,1),
'10to19' 	DECIMAL(3,1)
);

CREATE TABLE IF NOT EXISTS Facilities (
country 				VARCHAR(100) NOT NULL PRIMARY KEY,
'Year' 					INTEGER,
Mental_hospitals 		DECIMAL(4,3),
health_units 			DECIMAL(4,3),
outpatient_facilities 	DECIMAL(4,3),
day_treatment 			DECIMAL(4,3),
residential_facilities 	DECIMAL(4,3)
);

CREATE TABLE IF NOT EXISTS Humanresources (
country 				VARCHAR(100) NOT NULL PRIMARY KEY,
'Year' 					INTEGER,
Psychiatrists			DECIMAL(5,3),
Nurses					DECIMAL(5,3),
Social_workers 			DECIMAL(5,3),
Psychologists 			DECIMAL(5,3)
);

CREATE TABLE IF NOT EXISTS Tabla_de_hechos (
country 					VARCHAR(100) NOT NULL PRIMARY KEY,
'Year' 						INTEGER,
Tasa_media_suicidios_2016	DECIMAL(5,3),
Tasa_media_suicidios_2000	DECIMAL(5,3),
Facilidades_totales_2016 	DECIMAL(5,3),
Recursos_totales_2016		DECIMAL(5,3)
);

CREATE TABLE IF NOT EXISTS dimension_tiempo (
'Year' 	INTEGER
);

-- importar los archivos CSV
BEGIN TRANSACTION ;
.import csv -skip 1 'C:\Users\RAMON\Desktop\MASTER_CUNEF\ETL\PROYECTOS\PROYECTO ETL SQL\Suicide_rates\Age-standardized suicide rates.csv' Agestandardizedsuiciderates
COMMIT ;

BEGIN TRANSACTION ;
.import csv -skip 1 'C:\Users\RAMON\Desktop\MASTER_CUNEF\ETL\PROYECTOS\PROYECTO ETL SQL\Suicide_rates\Crude suicide rates.csv' Crudesuiciderates
COMMIT ;

BEGIN TRANSACTION ;
.import csv -skip 1 'C:\Users\RAMON\Desktop\MASTER_CUNEF\ETL\PROYECTOS\PROYECTO ETL SQL\Suicide_rates\Facilities.csv' Facilities
COMMIT ;

BEGIN TRANSACTION ;
.import csv -skip 1 'C:\Users\RAMON\Desktop\MASTER_CUNEF\ETL\PROYECTOS\PROYECTO ETL SQL\Suicide_rates\Human Resources.csv' Humanresources
COMMIT ;













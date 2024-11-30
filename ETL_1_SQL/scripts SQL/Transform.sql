-- Métricas de data quality
-- Precisión Agestandardizedsuiciderates
SELECT
    '2016' AS columna,
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100 AS porcentaje_1_decimal
FROM
    Agestandardizedsuiciderates
WHERE
    ABS(ROUND(`2016`, 1) - `2016`) < 0.1

UNION ALL

SELECT
    '2015',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    ABS(ROUND(`2015`, 1) - `2015`) < 0.1

UNION ALL

SELECT
    '2010',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    ABS(ROUND(`2010`, 1) - `2010`) < 0.1

UNION ALL

SELECT
    '2000',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    ABS(ROUND(`2000`, 1) - `2000`) < 0.1;

-- Precisión Crudesuiciderates

SELECT
    '_80_above' AS columna,
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100 AS porcentaje_1_decimal
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_80_above, 1) - _80_above) < 0.1

UNION ALL

SELECT
    '_70to79',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_70to79, 1) - _70to79) < 0.1

UNION ALL

SELECT
    '_60to69_',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_60to69_, 1) - _60to69_) < 0.1

UNION ALL

SELECT
    '_50to59_',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_50to59_, 1) - _50to59_) < 0.1

UNION ALL

SELECT
    '_40to49',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_40to49, 1) - _40to49) < 0.1

UNION ALL

SELECT
    '_30to39',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_30to39, 1) - _30to39) < 0.1

UNION ALL

SELECT
    '_20to29',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_20to29, 1) - _20to29) < 0.1

UNION ALL

SELECT
    '_10to19',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates
WHERE
    ABS(ROUND(_10to19, 1) - _10to19) < 0.1;
    
-- Precisión Facilities

SELECT
    'Mental__hospitals' AS columna,
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100 AS porcentaje_3_decimales
FROM
    Facilities
WHERE
    ABS(ROUND(Mental__hospitals, 3) - Mental__hospitals) < 0.001

UNION ALL

SELECT
    'outpatient__facilities',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities
WHERE
    ABS(ROUND(outpatient__facilities, 3) - outpatient__facilities) < 0.001

UNION ALL

SELECT
    'health_units',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities
WHERE
    ABS(ROUND(health_units, 3) - health_units) < 0.001

UNION ALL

SELECT
    'day__treatment',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities
WHERE
    ABS(ROUND(day__treatment, 3) - day__treatment) < 0.001

UNION ALL

SELECT
    'residential_facilities',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities
WHERE
    ABS(ROUND(residential_facilities, 3) - residential_facilities) < 0.001;
    
-- Precisión HumanResources

SELECT
    'Psychiatrists' AS columna,
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100 AS porcentaje_3_decimales
FROM
    HumanResources
WHERE
    ABS(ROUND(Psychiatrists, 3) - Psychiatrists) < 0.001

UNION ALL

SELECT
    'Nurses',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources
WHERE
    ABS(ROUND(Nurses, 3) - Nurses) < 0.001

UNION ALL

SELECT
    'Social_workers',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources
WHERE
    ABS(ROUND(Social_workers, 3) - Social_workers) < 0.001

UNION ALL

SELECT
    'Psychologists',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources
WHERE
    ABS(ROUND(Psychologists, 3) - Psychologists) < 0.001; 
    
-- Completitud Agestandardizedsuiciderates

SELECT
    '2016' AS columna,
    (COUNT(`2016`) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100 AS porcentaje_no_nulos
FROM
    Agestandardizedsuiciderates

UNION ALL

SELECT
    '2015',
    (COUNT(`2015`) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates

UNION ALL

SELECT
    '2010',
    (COUNT(`2010`) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates

UNION ALL

SELECT
    '2000',
    (COUNT(`2000`) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates;

-- Completitud Crudesuiciderates

SELECT
    '_80_above' AS columna,
    (COUNT(_80_above) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100 AS porcentaje_no_nulos
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_70to79',
    (COUNT(_70to79) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_60to69_',
    (COUNT(_60to69_) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_50to59_',
    (COUNT(_50to59_) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_40to49',
    (COUNT(_40to49) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_30to39',
    (COUNT(_30to39) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_20to29',
    (COUNT(_20to29) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates

UNION ALL

SELECT
    '_10to19',
    (COUNT(_10to19) * 1.0) / (SELECT COUNT(*) FROM Crudesuiciderates) * 100
FROM
    Crudesuiciderates;
    
-- Completitud Facilities

SELECT
    'Mental__hospitals' AS columna,
    (COUNT(Mental__hospitals) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100 AS porcentaje_no_nulos
FROM
    Facilities

UNION ALL

SELECT
    'outpatient__facilities',
    (COUNT(outpatient__facilities) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities

UNION ALL

SELECT
    'health_units',
    (COUNT(health_units) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities

UNION ALL

SELECT
    'day__treatment',
    (COUNT(day__treatment) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities

UNION ALL

SELECT
    'residential_facilities',
    (COUNT(residential_facilities) * 1.0) / (SELECT COUNT(*) FROM Facilities) * 100
FROM
    Facilities;

-- Completitud HumanResources

SELECT
    'Psychiatrists' AS columna,
    (COUNT(Psychiatrists) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100 AS porcentaje_no_nulos
FROM
    HumanResources

UNION ALL

SELECT
    'Nurses',
    (COUNT(Nurses) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources

UNION ALL

SELECT
    'Social_workers',
    (COUNT(Social_workers) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources

UNION ALL

SELECT
    'Psychologists',
    (COUNT(Psychologists) * 1.0) / (SELECT COUNT(*) FROM HumanResources) * 100
FROM
    HumanResources;
    
-- Razonabilidad Agestandardizedsuiciderates

SELECT
    '2016' AS columna,
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100 AS porcentaje_en_intervalo
FROM
    Agestandardizedsuiciderates
WHERE
    `2016` BETWEEN 0 AND 100

UNION ALL

SELECT
    '2015',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    `2015` BETWEEN 0 AND 100

UNION ALL

SELECT
    '2010',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    `2010` BETWEEN 0 AND 100

UNION ALL

SELECT
    '2000',
    (COUNT(*) * 1.0) / (SELECT COUNT(*) FROM Agestandardizedsuiciderates) * 100
FROM
    Agestandardizedsuiciderates
WHERE
    `2000` BETWEEN 0 AND 100;
    
-- Semántica para tabla Agestandardizedsuiciderates

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Agestandardizedsuiciderates)) AS percentage
FROM Agestandardizedsuiciderates
WHERE TRIM(LOWER(Sex)) IN ('male', 'female', 'both sexes');


SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Agestandardizedsuiciderates)) AS percentage
FROM Agestandardizedsuiciderates
WHERE `2016` BETWEEN 0 AND 100;

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Agestandardizedsuiciderates)) AS percentage
FROM Agestandardizedsuiciderates
WHERE `2015` BETWEEN 0 AND 100;

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Agestandardizedsuiciderates)) AS percentage
FROM Agestandardizedsuiciderates
WHERE `2010` BETWEEN 0 AND 100;

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Agestandardizedsuiciderates)) AS percentage
FROM Agestandardizedsuiciderates
WHERE `2000` BETWEEN 0 AND 100;
   

-- Semántica para tabla Crudesuiciderates
-- Suponemos que no encontraremos valores mayores a 300 y que todos los registros deben estar entre 0 y 300.

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE TRIM(LOWER(Sex)) IN ('male', 'female', 'both sexes');


SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_80_above" BETWEEN 0 AND 300;

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_70to79" BETWEEN 0 AND 300;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_60to69_" BETWEEN 0 AND 300;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_50to59_" BETWEEN 0 AND 300;
 
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_40to49" BETWEEN 0 AND 300;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_30to39" BETWEEN 0 AND 300;

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_20to29" BETWEEN 0 AND 300;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Crudesuiciderates)) AS percentage
FROM Crudesuiciderates
WHERE 
    "_10to19" BETWEEN 0 AND 300;
    
-- Semántica para Facilities 
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS valid_percentage
FROM Facilities
WHERE `Year` = 2016;

-- Definimos un rango lógico de 0 a 50 facilities por cada 100k habitantes y que este dato no debe ser negativo.

SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS percentage
FROM Facilities
WHERE 
    `Mental__hospitals` >= 0 AND `Mental__hospitals` BETWEEN 0 AND 50;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS percentage
FROM Facilities
WHERE 
    `health_units` >= 0 AND `health_units` BETWEEN 0 AND 50;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS percentage
FROM Facilities
WHERE 
    `outpatient__facilities` >= 0 AND `outpatient__facilities` BETWEEN 0 AND 50;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS percentage
FROM Facilities
WHERE 
    `day__treatment` >= 0 AND `day__treatment` BETWEEN 0 AND 50;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Facilities)) AS percentage
FROM Facilities
WHERE 
    `residential_facilities` >= 0 AND `residential_facilities` BETWEEN 0 AND 50;

-- Semántica para HumanResources 
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HumanResources)) AS valid_percentage
FROM HumanResources
WHERE `Year` = 2016;

-- Suponemos un rango lógico entre 0 y 150 para las siguientes columnas.
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HumanResources)) AS percentage
FROM HumanResources
WHERE 
    `Psychiatrists` >= 0 AND `Psychiatrists` BETWEEN 0 AND 50;
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HumanResources)) AS percentage
FROM HumanResources
WHERE 
    `Nurses` >= 0 AND `Nurses` BETWEEN 0 AND 50;    
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HumanResources)) AS percentage
FROM HumanResources
WHERE 
    `Social_workers` >= 0 AND `Social_workers` BETWEEN 0 AND 50;    
    
SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM HumanResources)) AS valid_percentage
FROM HumanResources
WHERE 
    `Psychologists` >= 0 AND `Psychologists` BETWEEN 0 AND 50; 
    
-- Identificabilidad Agestandardizedsuiciderates

SELECT 
    (CAST(COUNT(*) AS FLOAT) / 
        (SELECT COUNT(DISTINCT country) FROM Agestandardizedsuiciderates)
    ) * 100 AS unique_non_repeating_percentage
FROM (
    SELECT country
    FROM Agestandardizedsuiciderates
    GROUP BY country
    HAVING COUNT(*) = 1
) AS non_repeating_countries;

-- Identificabilidad Crudesuiciderates

SELECT 
    (CAST(COUNT(*) AS FLOAT) / 
        (SELECT COUNT(DISTINCT country) FROM Crudesuiciderates)
    ) * 100 AS unique_non_repeating_percentage
FROM (
    SELECT country
    FROM Crudesuiciderates
    GROUP BY country
    HAVING COUNT(*) = 1
) AS non_repeating_countries;

-- Identificabilidad Facilities

SELECT 
    (CAST(COUNT(*) AS FLOAT) / 
        (SELECT COUNT(DISTINCT country) FROM Facilities)
    ) * 100 AS unique_non_repeating_percentage
FROM (
    SELECT country
    FROM Facilities
    GROUP BY country
    HAVING COUNT(*) = 1
) AS non_repeating_countries;

-- Identificabilidad HumanResources

SELECT 
    (CAST(COUNT(*) AS FLOAT) / 
        (SELECT COUNT(DISTINCT country) FROM Humanresources)
    ) * 100 AS unique_non_repeating_percentage
FROM (
    SELECT country
    FROM Humanresources
    GROUP BY country
    HAVING COUNT(*) = 1
) AS non_repeating_countries;

-- Imputacion de nulos en tablas Facilities y HumanResources

SELECT * FROM Facilities;
-- Tratamiento de nulos. Reemplazamos los valores por 0 puesto que no tenemos información.
UPDATE Facilities
SET 
    Mental__hospitals = COALESCE(Mental__hospitals, 0),
    health_units = COALESCE(health_units, 0),
    outpatient__facilities = COALESCE(outpatient__facilities, 0),
    day__treatment = COALESCE(day__treatment, 0),
    residential_facilities = COALESCE(residential_facilities, 0);
    
-- Comprobamos que los nulos se han sustituido correctamente
SELECT * FROM Facilities; 

SELECT * FROM HumanResources;
-- Tratamiento de nulos. Reemplazamos los valores por 0 puesto que no tenemos información.
UPDATE HumanResources
SET 
    Psychiatrists = COALESCE(Psychiatrists, 0),
    Nurses = COALESCE(Nurses, 0),
    Social_workers = COALESCE(Social_workers, 0),
    Psychologists = COALESCE(Psychologists, 0);

-- Comprobamos que los nulos se han sustituido correctamente    
SELECT * FROM HumanResources;

-- Cálculo de métricas alojadas en la tabla de hechos

-- Recursos humanos totales por país 2016

SELECT
    country,
    ROUND(SUM(Psychiatrists + Nurses + Social_workers + Psychologists), 2) AS HumanResources_total
FROM
    HumanResources
GROUP BY
    country;

    
-- Facilidades totales por país 2016

SELECT
    country,
    ROUND(SUM(Mental__hospitals + outpatient__facilities + health_units + day__treatment + residential_facilities), 2) AS Facilities_total
FROM
    Facilities
GROUP BY
    country;

-- Tasa media suicidios 2016 por país

SELECT Country, "2016", Sex
FROM Agestandardizedsuiciderates
WHERE TRIM(Sex) = 'Both sexes';

-- Tasa media suicidios 2000 por país

SELECT Country, "2000", Sex
FROM Agestandardizedsuiciderates
WHERE TRIM(Sex) = 'Both sexes';

-- Actualizar tabla dimension_tiempo

INSERT INTO dimension_tiempo (year)
VALUES (2016),
       (2015),
       (2012),
       (2010);



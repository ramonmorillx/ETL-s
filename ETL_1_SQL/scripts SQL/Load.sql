-- introduccion en la tabla de hechos todas las métricas calculadas

INSERT INTO tabla_de_hechos (country, Recursos_totales_2016, Facilidades_totales_2016)
SELECT
    HumanResources.Country,
    ROUND(SUM(HumanResources.Psychiatrists + HumanResources.Nurses + HumanResources.Social_workers + HumanResources.Psychologists), 2) AS HumanResources_total,
    ROUND(SUM(Facilities.Mental__hospitals + Facilities.outpatient__facilities + Facilities.health_units + Facilities.day__treatment + Facilities.residential_facilities), 2) AS Facilities_total
FROM
    HumanResources
LEFT JOIN Facilities  ON HumanResources.Country = Facilities.Country
GROUP BY HumanResources.Country;

-- Actualizar tasas de suicidio 2016

UPDATE tabla_de_hechos
SET Tasa_media_suicidios_2016 = (
    SELECT
        ROUND(AVG("2016"), 2)
    FROM
        Agestandardizedsuiciderates
    WHERE
        TRIM(Sex) = 'Both sexes'
        AND Tabla_de_hechos.country = Agestandardizedsuiciderates.Country
);

-- Actualizar tasas de suicidio 2000

UPDATE Tabla_de_hechos
SET Tasa_media_suicidios_2000 = (
    SELECT
        ROUND(AVG("2000"), 2)
    FROM
        Agestandardizedsuiciderates
    WHERE
        TRIM(Sex) = 'Both sexes'
        AND Tabla_de_hechos.country = Agestandardizedsuiciderates.Country
);

-- Ajustamos los valores de la tabla de hechos

UPDATE Tabla_de_hechos
SET 
	year = 2016,
    Tasa_media_suicidios_2016 = COALESCE(Tasa_media_suicidios_2016, 0),
    Tasa_media_suicidios_2000 = COALESCE(Tasa_media_suicidios_2000, 0),
    Facilidades_totales_2016 = COALESCE(Facilidades_totales_2016, 0),
    Recursos_totales_2016 = COALESCE(Recursos_totales_2016, 0);    

-- Comprobamos que está todo correcto
SELECT * 
FROM Tabla_de_hechos




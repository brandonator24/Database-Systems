DROP TABLE IF EXISTS Cities_General;
DROP TABLE IF EXISTS AQI;
DROP TABLE IF EXISTS AQI_Forecast;
DROP TABLE IF EXISTS Current_Weather;
DROP TABLE IF EXISTS Forecasted_Weather;
DROP TABLE IF EXISTS Radiation;
DROP TABLE IF EXISTS Water_Quality;
DROP TABLE IF EXISTS Crime_Rates;
.headers off

-- Brandon
CREATE TABLE Cities_General (
    city_state VARCHAR(30) NOT NULL PRIMARY KEY,
    county VARCHAR(30) NOT NULL,
    populations INTEGER(10) NOT NULL,
    pop_density INTEGER(6) NOT NULL,
    time_zone VARCHAR(20) NOT NULL,
    latitude DECIMAL(8,5) NOT NULL,
    longitude DECIMAL(8,5) NOT NULL,
    zip_codes VARCHAR(1000)
);

-- Brandon
CREATE TABLE AQI (
    lat_lon VARCHAR(20) PRIMARY KEY,
    latitude DECIMAL(15,12) NOT NULL,
    longitude DECIMAL(15,12) NOT NULL,
    city_state VARCHAR(30) NOT NULL,
    time_updated datetime,
    AQI INTEGER(3) NOT NULL,
    CO INTEGER(4),
    H INTEGER(4),
    NO2 INTEGER(4),
    Ozone INTEGER(4),
    pm10 INTEGER(4),
    pm25 INTEGER(4)
);

-- Brandon
CREATE TABLE AQI_Forecast(
    aqi_date_loc VARCHAR(30) PRIMARY KEY,
    time_updated datetime,
    AQI INTEGER(3) NOT NULL,
    pm10 INTEGER(4),
    pm25 INTEGER(4)
);
 
-- Isaac
CREATE TABLE Current_Weather(
    avg_coord DECIMAL(8,5) PRIMARY KEY,
    x_y_grid_pt VARCHAR(8) NOT NULL,
    city_state VARCHAR(20) NOT NULL,
    current_temp INTEGER(3) NOT NULL,
    wind VARCHAR(7) NOT NULL,
    description INTEGER(3) NOT NULL,
    avg_dni DECIMAL(6,4),
    avg_ghi DECIMAL(6,4),
    avg_lat_tilt DECIMAL(6,4)
);

-- Isaac
CREATE TABLE Forecasted_Weather(
    weather_date_loc VARCHAR(30) PRIMARY KEY,
    avg_coord DECIMAL(8,5) NOT NULL,
    city_state VARCHAR(30) NOT NULL,
    current_temp INTEGER(3) NOT NULL,
    wind VARCHAR(7) NOT NULL,
    description INTEGER(3) NOT NULL
);

-- Brandon
CREATE TABLE Water_Quality(
    usgs_id INTEGER(10) NOT NULL PRIMARY KEY,
    city_state VARCHAR(20) NOT NULL,
    hardness INTEGER(3),
    ph FLOAT DECIMAL(4,2),
    conductance INTEGER(5),
    ammonia FLOAT(4,2),
    nitrites FLOAT(5,3),
    fluoride DECIMAL(4,3),
    arsenic DECIMAL(4,2),
    cobalt DECIMAL(5,2),
    iron DECIMAL(6,2),
    lead DECIMAL(5,3),
    mercury DECIMAL(7,3)
);

-- Isaac
CREATE TABLE Crime_Rates(
    ori VARCHAR(30) NOT NULL PRIMARY KEY, -- originating agency
    city_state VARCHAR(20) NOT NULL UNIQUE,
    robbery INTEGER(7) NOT NULL,
    burglarly INTEGER(7) NOT NULL,
    violent_crime INTEGER(7) NOT NULL,
    arson INTEGER(7) NOT NULL,
    yr INTEGER(4) NOT NULL
);
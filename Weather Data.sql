create table weather_data (Date_Time DATE,
	Temp_C FLOAT, 
	Dew_Point_Temp_C FLOAT,
	Rel_Hum_percent FLOAT,
	Wind_Speed_kmh FLOAT, 
	Visibility_km FLOAT,
	Press_kPa FLOAT,
	Weather VARCHAR(255)
);

select * from weather_data;

COPY weather_data (Date_Time,Temp_C,Dew_Point_Temp_C,Rel_Hum_percent,Wind_Speed_kmh,Visibility_km,Press_kPa,Weather
)
FROM 'C:\Users\HP\Downloads\Telegram Desktop\New folder\Data Analysis\Lux Dev Bootcamp 2024\Main\Weather Data.csv'
DELIMITER ','
CSV HEADER;

-- 1. Find all records where the weather was exactly clear

select * 
from weather_data
where weather = 'Clear';

-- 2. Number of times the wind speed was exactly 4km/h

select count(*)
from weather_data
where wind_speed_kmh = 4;

-- 3. Mean visibility of the dataset

select avg(Visibility_km)
from weather_data;

-- 4. Number of weather conditions that include snow

select count(weather)
from weather_data
where weather Ilike '%snow%';



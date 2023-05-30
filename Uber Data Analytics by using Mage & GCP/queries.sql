
--find an average tip from various payment types

SELECT a.payment_type_name as payment_type, AVG(b.tip_amount) as average_tip
FROM `basic-perigee-386320.uber_dataset.payment_type_dim` a
JOIN `basic-perigee-386320.uber_dataset.fact_table` b
on a.payment_type_id=b.payment_type_id
GROUP BY a.payment_type_name
ORDER BY average_tip desc;

--find the top 10 PICKUP locations based on the number of trips

SELECT p.pickup_latitude,p.pickup_longitude,COUNT(distinct b.trip_id) as total_trips from `basic-perigee-386320.uber_dataset.pickup_location_dim` p
JOIN `basic-perigee-386320.uber_dataset.fact_table` b
on p.pickup_location_id=b.pickup_location_id
GROUP BY p.pickup_latitude,p.pickup_longitude
ORDER BY total_trips desc;

--find the total number of trips by passenger count

SELECT p.passenger_count,COUNT(distinct b.trip_id) as total_trips from  `basic-perigee-386320.uber_dataset.passenger_count_dim` p
JOIN `basic-perigee-386320.uber_dataset.fact_table` b
on p.passenger_count_id=b.passenger_count_id
GROUP BY p.passenger_count
ORDER BY total_trips desc;

--find the avaerage fare amount by hour of the day

SELECT d.pick_hour as pickup_hour, AVG(b.fare_amount)
FROM `basic-perigee-386320.uber_dataset.datetime_dim` d
JOIN `basic-perigee-386320.uber_dataset.fact_table` b
ON d.datetime_id=b.datetime_id
GROUP BY d.pick_hour;



--merged all the necessary columns from all tables and then created table as select query
CREATE OR REPLACE TABLE `data-with-darshil.uber_data_engineering_yt.tbl_analytics` AS (
SELECT 
f.trip_id
f.VendorID,
d.tpep_pickup_datetime,
d.tpep_dropoff_datetime,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
pick.pickup_latitude,
pick.pickup_longitude,
drop.dropoff_latitude,
drop.dropoff_longitude,
pay.payment_type_name,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount
FROM 

`data-with-darshil.uber_data_engineering_yt.fact_table` f
JOIN `data-with-darshil.uber_data_engineering_yt.datetime_dim` d  ON f.datetime_id=d.datetime_id
JOIN `data-with-darshil.uber_data_engineering_yt.passenger_count_dim` p  ON p.passenger_count_id=f.passenger_count_id  
JOIN `data-with-darshil.uber_data_engineering_yt.trip_distance_dim` t  ON t.trip_distance_id=f.trip_distance_id  
JOIN `data-with-darshil.uber_data_engineering_yt.rate_code_dim` r ON r.rate_code_id=f.rate_code_id  
JOIN `data-with-darshil.uber_data_engineering_yt.pickup_location_dim` pick ON pick.pickup_location_id=f.pickup_location_id
JOIN `data-with-darshil.uber_data_engineering_yt.dropoff_location_dim` drop ON drop.dropoff_location_id=f.dropoff_location_id
JOIN `data-with-darshil.uber_data_engineering_yt.payment_type_dim` pay ON pay.payment_type_id=f.payment_type_id)
;

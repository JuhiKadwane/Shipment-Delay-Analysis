create database juhi;
CREATE TABLE shipment_delays (
    ShipmentID           VARCHAR(20) PRIMARY KEY,
    CustomerName         VARCHAR(100),
    OriginPort           VARCHAR(50),
    DestinationPort      VARCHAR(50),
    Carrier              VARCHAR(50),
    BookingDate          DATE,
    ETD                  DATE,  -- Estimated Time of Departure
    ETA                  DATE,  -- Estimated Time of Arrival
    ATD                  DATE,  -- Actual Time of Departure
    ATA                  DATE,  -- Actual Time of Arrival
    PlannedTransitDays   INT,
    ActualTransitDays    INT,
    DelayDays            INT,
    DelayReason          VARCHAR(100),
    ShipmentStatus       VARCHAR(30),
    Priority             VARCHAR(20)
);
LOAD DATA INFILE '/path/to/shipment_delays_large.csv'
INTO TABLE shipment_delays
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(ShipmentID, CustomerName, OriginPort, DestinationPort, Carrier,
 BookingDate, ETD, ETA, ATD, ATA,
 PlannedTransitDays, ActualTransitDays, DelayDays,
 DelayReason, ShipmentStatus, Priority);
 
 use juhi;
 show tables;
 select * from shipment_delays_large;
-- 1. Total shipments ---
SELECT COUNT(*) AS total_shipments
FROM shipment_delays_large;
-- 2. On-time delivery percentage ----
SELECT 
ROUND(
SUM(CASE WHEN DelayDays = 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2
) AS on_time_percentage
FROM shipment_delays_large;

-- 3. Average delay by carrier---
SELECT Carrier, 
AVG(DelayDays) AS avg_delay
FROM shipment_delays_large
GROUP BY Carrier
ORDER BY avg_delay DESC;

-- 4. Top delay reasons--
SELECT DelayReason, COUNT(*) AS total_cases
FROM shipment_delays_large
WHERE DelayReason <> 'None'
GROUP BY DelayReason
ORDER BY total_cases DESC;

-- 5. Most impacted customers---
SELECT CustomerName, 
COUNT(*) AS delayed_shipments
FROM shipment_delays_large
WHERE DelayDays > 0
GROUP BY CustomerName
ORDER BY delayed_shipments DESC;

-- 6. Monthly delay trend --

SELECT 
FORMAT(ETA, 'yyyy-MM') AS month,
AVG(DelayDays) AS avg_delay
FROM shipment_delays_large
GROUP BY FORMAT(ETA, 'yyyy-MM')
ORDER BY month;

-- 7. Worst performing carrier (business insight query) ---

SELECT Carrier,
       AVG(DelayDays) AS avg_delay
FROM shipment_delays_large
GROUP BY Carrier
ORDER BY avg_delay DESC
LIMIT 1;






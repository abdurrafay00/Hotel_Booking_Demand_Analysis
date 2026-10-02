-- Hotel Booking Demand Analysis

-- What is the total number of cancelled bookings?
-- 1. Total Cancelled Bookings
SELECT COUNT(*) AS Cancellation_count
FROM hotel_bookings
WHERE is_canceled = 1;

-- How many bookings were made by repeated guests?
-- 2. Total Repeated Guests
SELECT SUM(is_repeated_guest) AS Total_repeated_guest
FROM hotel_bookings;

-- What is the total number of stays during weeknights?
-- 3. Total Weeknight Stays
SELECT SUM(stays_in_week_nights) AS total_weeknight_stays
FROM hotel_bookings; 

-- Cancellation Analysis
-- Which arrival months have the highest number of cancelled bookings?
-- 4. Cancellation Count by Arrival Month  
SELECT arrival_date_month, COUNT(*) AS cancellation_booking
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY arrival_date_month
ORDER BY cancellation_booking DESC;

-- Stays Analysis
-- How do weeknight stays compare with weekend stays across arrival months?
-- 5. Weeknight vs Weekend Stays by Month
 SELECT arrival_date_month, SUM(stays_in_week_nights) AS weeknight_stays, SUM(stays_in_weekend_nights) AS weekend_stays
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY
    CASE arrival_date_month
        WHEN 'January' THEN 1
        WHEN 'February' THEN 2
        WHEN 'March' THEN 3
        WHEN 'April' THEN 4
        WHEN 'May' THEN 5
        WHEN 'June' THEN 6
        WHEN 'July' THEN 7
        WHEN 'August' THEN 8
        WHEN 'September' THEN 9
        WHEN 'October' THEN 10
        WHEN 'November' THEN 11
        WHEN 'December' THEN 12
    END;

-- Repeated Guest Analysis
-- Which countries have the highest number of repeated guests?
-- 6. Repeated Guests by Country
SELECT country, SUM(is_repeated_guest) AS repeated_guest
FROM hotel_bookings
WHERE is_repeated_guest = 1
GROUP BY country
ORDER BY repeated_guest DESC
LIMIT 10;

-- Market Segment Analysis
-- Which market segments have the highest number of cancelled bookings?
-- 7. Cancellation Count by Market Segment
SELECT market_segment, COUNT(*) AS cancellation_count
FROM hotel_bookings
WHERE is_canceled = 1
GROUP BY market_segment
ORDER BY cancellation_count DESC;

-- What is the cancellation rate for each market segment?
-- 8. Cancellation Rate by Market Segment
SELECT market_segment, COUNT(*) AS total_bookings, SUM(is_canceled) AS cancelled_bookings,
ROUND(SUM(is_canceled) * 100.0 / COUNT(*),2) AS cancellation_rate
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancellation_rate DESC;

-- Room Demand Analysis
-- Which room types are most frequently reserved?
-- 9. Most Requested Room Types
SELECT reserved_room_type, COUNT(*) AS reservation_count
FROM hotel_bookings
GROUP BY reserved_room_type
ORDER BY reservation_count DESC;

-- How does the cancellation rate differ between City Hotel and Resort Hotel?
-- 10. Cancellation Rate by Hotel
SELECT hotel, COUNT(*) AS total_bookings, SUM(is_canceled) AS cancelled_bookings,
ROUND(SUM(is_canceled) * 100.0 / COUNT(*),2) AS cancellation_rate
FROM hotel_bookings
GROUP BY hotel;

-- What percentage of bookings come from repeated guests?
-- 11. Repeated Guest Percentage
SELECT COUNT(*) AS total_bookings, SUM(is_repeated_guest) AS repeated_guests,
ROUND(SUM(is_repeated_guest) * 100.0 / COUNT(*),2) AS repeated_guest_percentage
FROM hotel_bookings;

-- Which market segments make bookings further in advance?
-- 12. Average Lead Time by Market Segment
SELECT market_segment, ROUND(AVG(lead_time), 2) AS avg_lead_time
FROM hotel_bookings
GROUP BY market_segment
ORDER BY avg_lead_time DESC;

-- What is the average daily rate for each hotel?
-- 13. Average Daily Rate by Hotel
SELECT hotel, ROUND(AVG(adr), 2) AS average_adr
FROM hotel_bookings
GROUP BY hotel;

-- Which countries generate the highest number of hotel bookings?
-- 14. Top Countries by Total Bookings
SELECT country, COUNT(*) AS total_bookings
FROM hotel_bookings
GROUP BY country
ORDER BY total_bookings DESC
LIMIT 10;

 






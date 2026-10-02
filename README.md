# Hotel_Booking_Demand_Analysis
Hotel Booking Demand Analysis using SQL &amp; Power BI, focusing on cancellations, guest behavior, booking trends, and room demand.

# 🏨 Hotel Booking Demand Analysis

## 📊 Overview

This project analyzes hotel booking data using **MySQL and Power BI** to identify booking trends, cancellation patterns, guest behavior, market segment performance, and room demand.

SQL queries were used to analyze the dataset and extract meaningful insights, while Power BI was used to create an interactive dashboard for data visualization and reporting.

---

## 📂 Dataset

The dataset contains hotel booking information, including:

- Hotel
- Booking cancellation status
- Lead time
- Arrival date
- Weekend and weeknight stays
- Guest information
- Country
- Market segment
- Distribution channel
- Repeated guest status
- Previous cancellations
- Room types
- Booking changes
- Deposit type
- Customer type
- Average Daily Rate (ADR)
- Special requests
- Reservation status

### Key Columns

```text
hotel
is_canceled
lead_time
arrival_date_year
arrival_date_month
arrival_date_week_number
arrival_date_day_of_month
stays_in_weekend_nights
stays_in_week_nights
adults
children
babies
meal
country
market_segment
distribution_channel
is_repeated_guest
previous_cancellations
previous_bookings_not_canceled
reserved_room_type
assigned_room_type
booking_changes
deposit_type
agent
company
days_in_waiting_list
customer_type
adr
required_car_parking_spaces
total_of_special_requests
reservation_status
reservation_status_date
🛠️ Tools
MySQL Workbench – SQL queries and data analysis
Power BI – Data visualization and interactive dashboard
SQL – Data aggregation and analytical queries
🔄 Project Steps
1. Data Preparation

The hotel booking dataset was prepared and loaded into MySQL for analysis.

2. SQL Analysis

SQL queries were written in MySQL Workbench to analyze:

Total cancelled bookings
Repeated guests
Weeknight and weekend stays
Cancellation trends by arrival month
Cancellation rate by market segment
Repeated guests by country
Room demand
Hotel-level cancellation patterns
Average Daily Rate (ADR)
Booking trends
3. Power BI Dashboard

The analyzed data was connected to Power BI to create an interactive dashboard.

The dashboard includes KPIs, charts, and filters to explore hotel booking demand and customer behavior.

📊 Dashboard

The Power BI dashboard provides an overview of:

Cancellation Count
Repeated Guest Count
Total Weeknight Stays
Cancellation by Arrival Month
Weeknight vs Weekend Stays
Repeated Guests by Country
Cancellation by Market Segment
Room Demand
Hotel Filter
Country Filter
Dashboard Preview

📈 Results

The analysis provides insights into:

Monthly hotel cancellation patterns
Cancellation behavior across market segments
Repeated guest activity by country
Weekday versus weekend stay patterns
Room demand and reservation patterns
Differences in cancellation behavior between hotels
Booking and guest behavior trends

These insights provide a better understanding of hotel booking demand and customer behavior.

🚀 How to Run
1. Clone the Repository
git clone https://github.com/yourusername/hotel-booking-demand-analysis.git
2. Open MySQL Workbench

Import the hotel booking dataset into MySQL.

3. Run SQL Queries

Open the SQL file included in the repository:

sql/hotel_booking_analysis.sql

Run the queries in MySQL Workbench to reproduce the analysis.

4. Open Power BI

Open the Power BI file:

powerbi/hotel_booking_dashboard.pbix

Connect or refresh the MySQL data source if required.

📁 Project Structure
hotel-booking-demand-analysis/
│
├── data/
│   └── hotel_bookings.csv
│
├── sql/
│   └── hotel_booking_analysis.sql
│
├── powerbi/
│   └── hotel_booking_dashboard.pbix
│
├── images/
│   └── dashboard.png
│
└── README.md
💡 Skills Demonstrated
SQL
MySQL
Data Analysis
Data Aggregation
Data Visualization
Power BI
Dashboard Development
KPI Analysis
Business Data Analysis

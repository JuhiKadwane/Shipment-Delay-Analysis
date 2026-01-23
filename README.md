# Shipment Delay Analysis (SQL + Power BI)

## 📦 Project Overview
This project analyzes shipment delays affecting import customers (consignees) in a logistics environment.  
The goal is to identify operational bottlenecks, understand root causes of delays, and provide actionable insights using data.

Using a simulated dataset of 1,500+ shipment records, I performed data analysis using SQL and built an interactive Power BI dashboard to visualize key performance indicators such as on-time delivery, average delay, carrier performance, and delay reasons.

---

## 🎯 Business Problem
Import customers were experiencing frequent shipment delays, impacting customer satisfaction and service reliability.  
The business needed clarity on:
- How often delays occur  
- Which customers are most impacted  
- Which carriers are underperforming  
- What the main root causes of delays are  
- How performance trends change over time  

---

## 🛠 Tools & Technologies
- SQL (data querying, aggregation, KPI calculations)
- Power BI (dashboard design, DAX measures, data visualization)
- Excel (data preparation)
- Data Analysis & Business Insights

---

## 📊 Dataset
- Type: Simulated shipment transactional data
- Records: 1,500+ rows
- Time period: Jan 2024 – Jun 2024

Key fields include:
- ShipmentID  
- CustomerName  
- OriginPort  
- DestinationPort  
- Carrier  
- ETA, ATA  
- PlannedTransitDays, ActualTransitDays  
- DelayDays  
- DelayReason  
- ShipmentStatus  
- Priority  

---

## 📈 Key Analysis Performed
- On-time delivery percentage calculation  
- Average delay analysis by carrier  
- Customer-level delay impact analysis  
- Monthly delay trend analysis  
- Root cause analysis using delay reasons  
- High-priority shipment performance analysis  

---

## 📊 Power BI Dashboard Features
- KPI Cards:
  - Total Shipments  
  - On-Time Delivery %  
  - Average Delay Days  
  - Delayed Shipments  
- Bar chart: Average delay by carrier  
- Column chart: Delayed shipments by customer  
- Pie chart: Delay reason distribution  
- Line chart: On-time performance trend by month  
- Interactive slicers for:
  - Customer  
  - Carrier  
  - Origin Port  
  - Shipment Status  
  - Priority  

---

## 💡 Key Insights
- Port congestion emerged as the most common cause of delays  
- Certain carriers consistently showed higher average delays  
- A small number of customers were disproportionately impacted by delays  
- High-priority shipments showed better on-time performance  
- Seasonal spikes in delays were visible in specific months  

---

## 📂 Project Structure
Shipment-Delay-Analysis/
│
├── dataset/
│ └── shipment_delays_large.csv
│
├── sql_queries/
│ └── analysis_queries.sql
│
├── powerbi/
│ └── dashboard_screenshots/
│
└── README.md

---

## 🚀 Future Improvements
- Add predictive model to forecast delay risk  
- Automate data refresh using Power BI Service  
- Add SLA compliance tracking  
- Integrate real-time operational KPIs  

---

## 👤 Author
Juhi Kadwane  
Aspiring Business Analyst / Data Analyst (Logistics & Analytics)

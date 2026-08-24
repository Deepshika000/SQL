# 🎮 Gameverse Database Analysis

## 📌 Overview
**Gameverse** is a beginner-level relational database analysis project designed to explore player behavior, game engagement metrics, revenue trends, and overall platform performance. 

The project uses SQL to query across 6 core entities—**Players**, **Games**, **GameSessions**, **Achievements**, **Purchases**, 
and **Payments**—to extract actionable insights for game developers and business strategists.

---

## 🗄️ Database Architecture & Entity Summary
The database is structured around six key relational tables:
* **`Players`**: Demographic data (country, join dates) and player profiles.
* **`Games`**: Game metadata (title, release year, supported platforms).
* **`GameSessions`**: Granular tracking of play sessions and active time per game.
* **`Achievements`**: In-game player achievements and completion metrics.
* **`Purchases`**: Transactional data for in-game purchases.
* **`Payments`**: Payment processing details and financial records.

---

## 🔍 Key SQL Analysis & Highlights

### 1. Data Integrity & Verification
* **Record Count Validation**: Verified table completeness by counting total records across all six datasets to ensure data integrity prior to analysis.

### 2. Player Engagement & Demographic Analysis
* **User Localization**: Identified top player distribution by country to highlight primary geographical markets.
* **Most Engaged Players**: Calculated play sessions and overall activity to pin down top active users.

### 3. Game Performance & Platform Insights
* **Popularity Tracking**: Evaluated the most played vs. least played games across all gaming platforms.
* **Release Trends**: Analyzed performance metrics mapped against release years and available gaming platforms.

### 4. Revenue & Financial Analysis
* **Total & Average Revenue**: Calculated total platform revenue and average purchase order value (AOV).
* **Revenue by Game**: Joined `Games` and `Purchases` tables to calculate total earnings per game title.
* **Top Spenders**: Highlighted high-value players driving the majority of in-game purchases.
* **Monthly Sales Trends**: Aggregated purchase data chronologically to identify peak sales months and seasonality.

---

## 🛠️ Tech Stack & Skills Demonstrated
* **Database Engine**: SQL (MySQL Workbench)
* **SQL Techniques Applied**:
  * Data Retrieval (`SELECT`, `WHERE`, `ORDER BY`, `LIMIT`)
  * Data Aggregation (`COUNT`, `SUM`, `AVG`, `GROUP BY`, `HAVING`)
  * Multi-Table Joins (`INNER JOIN`, `LEFT JOIN`)
  * Date/Time Formatting & Monthly Aggregations

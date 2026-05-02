# 🛍️ Retail Customer Behavior & Shopping Trends Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-MySQL-orange?logo=mysql)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Pandas](https://img.shields.io/badge/Pandas-EDA-green?logo=pandas)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-Retail%20%7C%20E--Commerce-purple)

---

## 📌 Project Overview

This is a **complete, company-level data analytics project** built to analyze retail customer purchasing behavior and shopping trends. The project follows a real corporate analyst workflow — starting from raw messy data, through Python cleaning and EDA, SQL business analysis, and finally a Power BI executive dashboard.

This is not a tutorial follow-along. Every step — data cleaning decisions, SQL problem framing, and dashboard design — was done independently to simulate how a **real Data Analyst operates inside a business team.**

---

## 🎯 Business Problem

A retail company is struggling to understand *who* their customers are, *what* they buy, and *why* certain segments outperform others. The goal of this project is to answer:

- Which product categories generate the most revenue?
- Which age group and gender segment drives the highest sales?
- What is the impact of subscription status on purchase behavior?
- How do shipping preferences vary across customer segments?
- Which customer segments have the highest average purchase value?

---

## 🔄 End-to-End Workflow

| Step | Tool | What Was Done |
|---|---|---|
| 1️⃣ **Data Loading & EDA** | Python · Pandas · Jupyter | Loaded raw dataset, handled nulls, explored distributions, analyzed correlations |
| 2️⃣ **Business Analysis** | SQL · MySQL | Wrote queries to solve each business problem — aggregations, GROUP BY, CTEs, Window Functions |
| 3️⃣ **Dashboard** | Power BI | Built interactive KPI dashboard with slicers, category breakdowns, age group analysis |

---

## 📊 Dashboard Overview

| KPI | Value |
|---|---|
| 👥 Total Customers | **1,181** |
| 💰 Avg Purchase Amount | **$59.80** |
| ⭐ Avg Review Rating | **3.73 / 5** |
| ✅ Subscription Rate | **38.7%** |

### Dashboard Pages
| Page | Description |
|---|---|
| **Customer Behavior Dashboard** | KPI cards, subscription breakdown, revenue & sales by category and age group |

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Python (Pandas)** | Data cleaning, null handling, EDA, feature exploration |
| **Jupyter Notebook** | Python development environment |
| **MySQL / SQL** | Business problem solving — aggregations, joins, window functions |
| **Power BI Desktop** | Interactive dashboard, KPI cards, slicers, visual storytelling |
| **Excel / CSV** | Raw source dataset |

---

## 💡 Key Technical Skills Demonstrated

- 🐍 **Python EDA** — Shape inspection, data types, describe(), null analysis, value counts, distributions
- 🗄️ **Advanced SQL** — GROUP BY, HAVING, CTEs, Window Functions (RANK, ROW_NUMBER), Subqueries
- 📊 **Power BI** — KPI cards, donut charts, bar charts, age group breakdowns, category slicers
- 🔗 **End-to-End Thinking** — Raw data → Business question → Analysis → Visual insight

---

## 📸 Dashboard Screenshots

![Customer Behavior Dashboard](https://github.com/naveenupward/retail-customer-behavior-analytics/raw/main/screenshots/Summary.png)

---

## 📈 Key Insights

- 🏆 **Clothing dominates** both revenue and sales volume — the single highest-performing category across all customer segments
- 👥 **Adult age group** is the top revenue driver, followed closely by Middle-aged customers
- 📦 **61.3% of customers are not subscribed** — a major opportunity for the business to improve retention and loyalty programs
- ⭐ **Average review rating of 3.73** suggests moderate satisfaction — room for improvement in product quality or delivery experience
- 💳 Subscribed customers (38.7%) likely show higher repeat purchase rates — a key metric for customer lifetime value strategy
- 🛒 **$59.80 average purchase amount** gives a clear baseline for upsell and cross-sell targeting

---

## 📂 Repository Structure

```
📦 retail-customer-behavior-analytics
 ┣ 📁 data/               → Raw dataset (CSV/Excel)
 ┣ 📁 Jupyter-Notebook/   → Python EDA & cleaning (.ipynb)
 ┣ 📁 sql/                → Business analysis queries (.sql)
 ┣ 📁 powerbi/            → Dashboard file (.pbix)
 ┣ 📁 screenshots/        → Dashboard & project visuals
 ┗ 📄 README.md           → Project documentation
```

---

## 🚀 How to Run This Project

**Python (EDA)**
1. Open `Jupyter-Notebook/` in Jupyter Notebook or VS Code
2. Run all cells top to bottom
3. Requires: `pandas`, `numpy`, `matplotlib`, `seaborn`

**SQL (Business Analysis)**
1. Import the dataset into MySQL or PostgreSQL
2. Open and run queries from the `sql/` folder
3. Each query is labelled by business question

**Power BI (Dashboard)**
1. Download Power BI Desktop (free — Microsoft)
2. Open `.pbix` file from `powerbi/` folder
3. Reconnect data source to `data/` folder if needed

---

## 👤 Author

**Naveen** — Aspiring Data Analyst  
`Python` · `SQL` · `Power BI` · `Excel`

📎 [LinkedIn](https://www.linkedin.com/in/naveenkumar-k-643017405)  
📁 [GitHub](https://github.com/naveenupward)

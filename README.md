# 🛍️ Retail Customer Behavior & Shopping Trends Analysis

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python)
![SQL](https://img.shields.io/badge/SQL-SQL%20Server-orange?logo=microsoftsqlserver)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow?logo=powerbi)
![Pandas](https://img.shields.io/badge/Pandas-EDA-green?logo=pandas)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
![Domain](https://img.shields.io/badge/Domain-Retail%20%7C%20E--Commerce-purple)

---

## 📌 Project Overview

A **complete, company-level end-to-end data analytics project** on retail customer purchasing behavior and shopping trends — built entirely independently to simulate how a real Data Analyst operates inside a business team.

The project covers the full corporate analyst workflow:
**Raw Data → Python Cleaning & EDA → SQL Server ingestion → Business Analysis via SQL → Power BI Executive Dashboard**

Dataset: **3,900 customer records** across 18 columns including age, category, purchase amount, subscription status, shipping type, payment method, and purchase frequency.

---

## 🎯 Business Problem

A retail company needs to understand customer purchasing behavior to improve revenue strategy, retention, and acquisition. This project answers 7 real business questions:

1. What is the total revenue generated?
2. Which gender contributes more revenue — and why?
3. Do subscribers spend more than non-subscribers?
4. How are customers segmented by loyalty tier?
5. Which product categories drive the most revenue?
6. Does applying discounts actually increase purchase amounts?
7. Who are the top 10 highest-value customers?

---

## 🔄 End-to-End Project Workflow

| Step | Tool | What Was Done |
|---|---|---|
| 1️⃣ **Data Loading** | Python · Pandas | Loaded 3,900-row CSV, inspected schema, dtypes, and head |
| 2️⃣ **Data Cleaning** | Python · Pandas | Handled 37 null values in Review Rating using category-wise median imputation |
| 3️⃣ **Feature Engineering** | Python · Pandas | Created `age_group` using pd.qcut(), `purchase_frequency_days` via frequency mapping, removed redundant column `promo_code_used` after confirming 100% overlap with `discount_applied` |
| 4️⃣ **SQL Ingestion** | SQLAlchemy · pyodbc | Connected Python to SQL Server Express via ODBC Driver 17, loaded cleaned DataFrame using `df.to_sql()` |
| 5️⃣ **Business Analysis** | SQL Server | Solved all 7 business questions using aggregations, window functions, CASE statements, TOP N queries |
| 6️⃣ **Dashboard** | Power BI | Built interactive KPI dashboard with slicers, category breakdowns, age group revenue analysis |

---

## 🐍 Python — Key Data Cleaning & Engineering Decisions

| Task | Approach | Why |
|---|---|---|
| 37 null values in `Review Rating` | Filled with **category-wise median** using `groupby().transform()` | More accurate than global median — each category has different rating patterns |
| Column standardization | Lowercased + underscored all column names | SQL-compatible, clean, professional naming |
| Removed `promo_code_used` | Confirmed 100% identical to `discount_applied` using `.all()` check | Eliminated redundancy before loading to SQL |
| Created `age_group` | Used `pd.qcut()` with 4 quantile bins → Young Adult, Adult, Middle-aged, Senior | Enables age-segment analysis in both SQL and Power BI |
| Created `purchase_frequency_days` | Mapped text labels to numeric days (Weekly=7, Monthly=30, etc.) | Enables quantitative frequency analysis |

---

## 🗄️ SQL Business Analysis — Findings & Recommendations

### Q1 — Total Revenue
> **Total revenue: $233,081** across all 3,900 customers

---

### Q2 — Gender Revenue Analysis
| Gender | Customers | Avg Spend | Total Revenue | Share |
|---|---|---|---|---|
| Male | 2,652 | $59 | $157,890 | ~67% |
| Female | 1,248 | $60 | $75,191 | ~32% |

**Finding:** Male customers contribute 2x the revenue — but average spend per customer is nearly identical ($59 vs $60). The gap is driven by **volume, not behavior.**

**💡 Recommendation:** Focus acquisition efforts on female customers — since their spending behavior already matches males, increasing their count directly scales revenue.

---

### Q3 — Subscription Impact
| Status | Customers | Avg Spend | Total Revenue |
|---|---|---|---|
| Non-Subscriber | 2,847 | $59 | $170K |
| Subscriber | 1,053 | $59 | $62K |

**Finding:** Subscriptions are not driving higher per-customer spend. Revenue difference is entirely due to subscriber base size.

**💡 Recommendation:** Push subscription adoption — since spend behavior is identical, converting non-subscribers is a direct revenue multiplier.

---

### Q4 — Customer Segmentation
| Segment | Definition | Customers | Revenue |
|---|---|---|---|
| New | 1 previous purchase | Small | Low |
| Returning | 2–5 previous purchases | Medium | Medium |
| Loyal | 6+ previous purchases | Majority | Highest |

**Finding:** Loyal customers dominate both count and revenue. New customer acquisition is limited.

**💡 Recommendation:** Build nurturing funnel to convert new → returning → loyal customers.

---

### Q5 — Category Revenue
> Clothing dominates revenue. Business shows **category concentration risk.**

**💡 Recommendation:** Diversify or strengthen underperforming categories to reduce revenue dependency.

---

### Q6 — Discount Impact
> Average purchase amount is nearly the same whether discount is applied or not.

**💡 Recommendation:** Discounts are not increasing basket size. Redirect discount budget toward targeted acquisition or loyalty programs.

---

### Q7 — Top 10 Customers
> A small group of customers contributes disproportionately high revenue — classic **Pareto effect.**

**💡 Recommendation:** Protect these customers with VIP programs, personalized outreach, and loyalty rewards.

---

## 📊 Power BI Dashboard

| KPI | Value |
|---|---|
| 👥 Total Customers | **1,181** |
| 💰 Avg Purchase Amount | **$59.80** |
| ⭐ Avg Review Rating | **3.73 / 5** |
| ✅ Subscription Rate | **38.7%** |

![Customer Behavior Dashboard](https://github.com/naveenupward/retail-customer-behavior-analytics/raw/main/screenshots/Summary.png)

---

## 📂 Repository Structure

```
📦 retail-customer-behavior-analytics
 ┣ 📁 data/                → Raw dataset (CSV)
 ┣ 📁 Jupyter-Notebook/    → Python EDA & cleaning (.ipynb)
 ┣ 📁 sql/                 → 7 business analysis queries (.sql)
 ┣ 📁 powerbi/             → Dashboard file (.pbix)
 ┣ 📁 screenshots/         → Dashboard visuals
 ┗ 📄 README.md            → Project documentation
```

---

## 🚀 How to Run

**Python**
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy pyodbc
```
Open `Jupyter-Notebook/` and run all cells top to bottom.

**SQL**
- Import cleaned data into SQL Server or MySQL
- Run queries from `sql/` folder — each file is labelled by business question

**Power BI**
- Open `.pbix` from `powerbi/` in Power BI Desktop (free)
- Reconnect data source to `data/` folder if needed

---

## 👤 Author

**Naveen** — Aspiring Data Analyst  
`Python` · `SQL` · `Power BI` · `Excel`

📎 [LinkedIn](https://www.linkedin.com/in/naveenkumar-k-643017405)  
📁 [GitHub](https://github.com/naveenupward)

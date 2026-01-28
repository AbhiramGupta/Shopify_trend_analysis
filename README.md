# Shopify Product Trend & Pricing Analytics (2025)

## 📊 Project Overview
This project analyzes Shopify product data to understand **what drives product trends** on the platform.  
The analysis focuses on **pricing, category, subcategory, and product-level performance** to identify key factors influencing trend momentum.

The goal is to demonstrate an **end-to-end data analytics workflow** — from data cleaning to SQL analysis and interactive dashboarding.

---

## ❓ Business Problem
What factors influence a product’s **trend score** on Shopify?

Specifically:
- Does higher price lead to higher trend scores?
- Which categories and subcategories trend the most?
- Are there high-trend products at lower price points?
- Which products consistently outperform others within their category?

---

## 🧠 Tools & Technologies
- **Python** (Pandas, NumPy) – data cleaning & preprocessing  
- **PostgreSQL** – structured data storage  
- **SQL** – business analysis, aggregations, joins, window functions  
- **Power BI** – interactive dashboard & storytelling  

---

## 🔄 Project Workflow
1. Cleaned and preprocessed raw Shopify product data using Python  
2. Loaded cleaned data into PostgreSQL  
3. Performed exploratory and business analysis using SQL  
4. Built an interactive Power BI dashboard to visualize insights  
5. Derived actionable business insights from the analysis  

---

## 🗃️ Dataset
- Public Shopify trending products dataset (2025)
- Includes product price, category, subcategory, units sold, revenue, and trend score

> **Note:** Trend score represents product momentum or popularity and is treated as a composite engagement metric, not a customer rating.

---

## 📈 Key SQL Analyses
- Category-wise product distribution and revenue contribution  
- Average price and trend score by category and subcategory  
- Products priced above overall average price  
- High-performing products using `DENSE_RANK()` per category  
- Identification of high-trend, mid-priced product opportunities  

---

## 📊 Dashboard Overview
The Power BI dashboard includes:

### 🔹 Overview Page
- Total products, revenue, units sold, and average trend score  
- Category-level revenue and sales performance  
- Price vs trend score relationship  

### 🔹 Category & Subcategory Analysis
- Average trend score by category  
- Subcategory-level performance breakdown  
- Drill-down analysis using slicers  

### 🔹 Product-Level Insights
- Top trending products overall  
- Top 3 products per category using ranking logic  

---

## 🔍 Key Insights
- Product price alone does **not strongly influence trend score**  
- Fitness and Beauty categories consistently show high trend momentum  
- Certain subcategories achieve high trend scores at mid-range prices  
- Trend score reflects **engagement momentum**, not long-term quality  

---

## 📸 Dashboard Preview
Screenshots of the Power BI dashboard are available in the `powerbi/dashboard_screenshots/` folder.

---

## 🚀 How This Project Adds Value
This project demonstrates:
- End-to-end analytics ownership  
- Business-focused SQL analysis  
- Effective data storytelling using Power BI  
- Ability to translate raw data into insights  

---

## 📬 Contact
If you’d like to discuss this project or provide feedback, feel free to connect with me on LinkedIn.

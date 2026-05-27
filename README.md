# FDIC-Banking-Analysis
Analyzing how Federal Reserve interest rate changes impact the revenue and profitability of the top 10 US banks (2015–2025) using Python, DuckDB, and FDIC public data.
---

## Overview

This project explores the relationship between Federal Funds Rate movements and key banking metrics across 10 major US banks from 2015 to 2025. Metrics analyzed include net income, net interest margin (NIM), return on equity (ROE), and return on assets (ROA).

**Banks Analyzed**

JPMorgan Chase, Bank of America, Wells Fargo, Citibank, Goldman Sachs, Morgan Stanley, PNC Bank, Truist Bank, Capital One, Capital One USA

---

## Key Questions

- Do banks earn more when interest rates rise?
- Which banks are most sensitive to rate changes?
- How did the 2020 rate crash and 2022–2023 rate hikes show up in bank performance?
- Is there a lag between Fed rate changes and bank profitability?

---

## Tools

| Tool | Purpose |
|---|---|
| Python (pandas) | Data loading, cleaning, transformation |
| DuckDB | SQL-based querying and final data shaping |
| Matplotlib | Data visualization |
| Google Colab | Development environment |
| FDIC BankFind Suite | Source data (44 quarterly CSV files) |

---

## Project Structure

```
fdic-banking-analysis/
│
├── README.md
│   └── FDIC_Analysis.ipynb        # Full Colab notebook
│   └── bank_data_final.csv        # Cleaned, analysis-ready dataset
│   └── bank_analysis.png          # Output charts
    └── bank_query.sql             # DuckDB query used for final cleaning
```

---

## Visualizations

![Bank Analysis Chart](Bank_Analysis_Dashboard.png)

Three charts produced:

1. **Annual Net Income by Bank** — Line chart comparing all 10 banks from 2015–2025
2. **Avg Net Interest Margin vs Federal Funds Rate** — Dual-axis bar/line chart showing the NIM-rate relationship
3. **Return on Equity (ROE) by Bank** — Line chart tracking profitability over time

---

## Data Cleaning

- Loaded and merged 44 quarterly CSV files totaling 231,650 rows and 161 columns
- Filtered to top 10 banks using string matching, accounting for FDIC non-standard naming conventions
- Selected 12 key financial metrics from 161 available columns
- Joined with manually compiled Federal Funds Rate data by quarter
- Used DuckDB SQL to rename banks, convert raw values to billions, and shape the final dataset
- Resolved missing 2025 Fed rate values for future quarters

---

## Key Findings

- Net interest margins rose sharply in 2022–2023 alongside the Fed's aggressive rate hike cycle
- JPMorgan Chase showed the strongest net income growth over the full period
- The 2020 rate crash compressed net interest margins across all banks simultaneously
- Smaller banks in the top 10 such as Truist and PNC showed more ROE volatility than megabanks

---

## Data Source

- FDIC BankFind Suite — publicly available quarterly call report data
- Federal Funds Rate data manually compiled from Federal Reserve historical records

---

## Author

**Giovanni Del Angel**
Co-op Data Analytics Fellowship | Chicago, IL
[LinkedIn](https://linkedin.com/in/giovannidelangel) · [Tableau Public](https://public.tableau.com/app/profile/giovannidelangel)

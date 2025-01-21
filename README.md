# 📊 Risk Analysis Through Simulation – Lab  

## 🏫 Overview  
This project demonstrates risk analysis using historical stock price data for **Nike, Inc. (NKE)**. We analyze returns, calculate risk metrics, and use Kernel Density Estimation (KDE) to simulate potential future returns. This lab is part of the **Institute for Advanced Analytics** coursework.  

---

## ✨ Features  
- 📈 Fetch stock prices using `quantmod`  
- 🧮 Calculate daily returns for NKE  
- 📉 Compute statistical measures: mean, variance, standard deviation  
- 🚨 Value at Risk (VaR) estimation at 1% and 5% confidence levels   

---

## 📋 Prerequisites  
- R programming environment  
- Required R packages:  
  - `quantmod` – for financial data  
  - `tseries` – for time series analysis  
  - `ks` – for Kernel Density Estimation  

To install all required packages, run:  
```r  
install.packages(c("quantmod", "tseries", "ks"))
```

This project is licensed under the MIT License – see the LICENSE file for details.

DATA ANALYSIS PROJECT - SALES MANAGEMENT 

Business Request and User Stories

![Screenshot 2023-01-30 001126](https://user-images.githubusercontent.com/107060022/215348581-29d6133c-d006-468c-9d03-9c75e654f105.png), width = 225 

Data Cleansing and Transformation using SQL: To create the necessary data model and meet business needs defined in the user stories the following tables were extracted using SQL.

One data sources (Sales Budget) was provided in Excel format and connected in the data model in the later stages. 

Below are the SQL statements for cleansing and transforming the data. 

Dim_Calendar:

![Screenshot 2023-01-30 001939](https://user-images.githubusercontent.com/107060022/215348984-d5a61ce2-fc7a-4a9d-bc43-fc104984846e.png)

Dim_Customer:

![Dim_Customer ](https://user-images.githubusercontent.com/107060022/215349292-b1a0f67b-837c-4fd9-934b-f942eeb60781.png)

Fact_InternetFactSales:

![Fact_InternetFactSales](https://user-images.githubusercontent.com/107060022/215349425-a43d50d5-0ba0-4a2b-a55b-6446cea234e3.png)

Dim_Project:

![Dim_Project](https://user-images.githubusercontent.com/107060022/215349334-f417308c-018a-480a-b339-b2071f8dee2a.png)

DATA MODEL

Below is a screenshot of the data model after cleansed and prepared tables were loaded into Power BI. It shows the relationship defined between the tables and also shows how the FACTS_BUDGET has been connected to the INTERNET FACT SALES Table and other DIM (Dimension) Tables.

![Relations](https://user-images.githubusercontent.com/107060022/215349863-0343d692-490c-4da7-8fd3-bf8a9ed08ab0.png)

SALES MANAGEMENT DASHBOARD

The finished sales management dashboard, that focuses on combining tables to shows the sales over time, per customer and per product. The dashboards is divided into two parts:

SALES OVERVIEW: highlights the sales over time, covering various parameters including sales across geographics locations, across customers and product segments

PRODUCT INSIGHTS: highlights top selling products, key product segments and sales in different geographies among other paramenters

The screenshots below give a preview of the dashboard:

SALES OVERVIEW

![Sales Overview ](https://user-images.githubusercontent.com/107060022/215350359-4b720199-af43-46b5-b9bd-2b781b4abe95.png)

PRODUCT INSIGHTS 

![Product Insights ](https://user-images.githubusercontent.com/107060022/215350371-4259995b-c038-4687-b512-9d1404407cf4.png)

All the files referenced to here can be found in the repository, including the dashboards. 

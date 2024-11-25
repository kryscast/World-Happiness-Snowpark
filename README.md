# Snowpark Capstone Project: World Happiness Report 2024  

This project demonstrates the use of **Snowpark** with **Snowflake** to process, clean, and visualize data. The dataset used is the *World Happiness Report 2024*.  

The primary goal of this project was to gain hands-on experience with Snowpark, including database interaction, data cleaning, and preparing data for visualizations.  

---

## Project Structure  

### 1. **Data**  
- **World_Happiness_Report_2024.csv**: The raw dataset containing information about world happiness metrics for 2024.  

---

### 2. **Key Files**  

| File                  | Description                                                                                          |
|-----------------------|------------------------------------------------------------------------------------------------------|
| **load_database.sql** | Defines the Snowflake environment: creating a warehouse, schemas, file format, stage, tables, etc.  |
| **utils.py**          | Establishes the Snowpark connection to Snowflake using `creds.json`.                                 |
| **creds.json**        | Stores Snowflake account credentials for secure connections.                                         |
| **refine.py**         | Processes raw data: drops columns, normalizes, formats, and imputes nulls with mean values.          |
| **curate.py**         | Creates two Snowflake views for visualization in the Curated schema using Snowpark DataFrames.       |
| **main.py**           | Executes all scripts sequentially for streamlined workflow.                                          |
| **SnowparkCapstone.pdf** | Contains Sigma dashboards showcasing visualizations of the cleaned and refined data.              |

---

## How to Run  

1. **Set Up Snowflake**  
   - Run `load_database.sql` in your Snowflake environment to create the warehouse, schemas, stage, and table, and to load the data.  

2. **Establish Connection**  
   - Update `creds.json` with your Snowflake account credentials.  
   - Ensure the file is referenced in `utils.py` to enable a successful connection.  

3. **Clean and Refine Data**  
   - Execute `main.py` to process the data and create the necessary schemas and views.  

4. **Visualize Data**  
   - Open `SnowparkCapstone.pdf` to explore the Sigma dashboards showcasing the curated data.  

---

## Learning Outcomes  

- Gained proficiency in using **Snowpark** to interact with Snowflake databases.  
- Learned how to load, process, and refine data using Python and SQL.  
- Developed data visualization skills using **Sigma** dashboards.  

---

## Folder Contents  

- `data/`: Contains the raw dataset (*World_Happiness_Report_2024.csv*).  
- `scripts/`: Includes Python scripts for connecting, refining, and curating data.  
- `sql/`: Contains SQL files for setting up the Snowflake environment.  
- `visualizations/`: Contains the Sigma dashboards (*SnowparkCapstone.pdf*).  

---

## Prerequisites  

- Snowflake account and warehouse.  
- Python environment with `snowflake-snowpark-python` library installed.  
- Sigma account for creating dashboards.  

---

## Acknowledgments  

This project was part of a capstone to explore **Snowpark** and **Snowflake** capabilities for data engineering and visualization.  

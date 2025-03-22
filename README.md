# Crowdfunding ETL Project

## Table of Contents
1. [Project Overview](#project-overview)
2. [DataFrames Created](#dataframes-created)
   - [Category DataFrame](#category-dataframe)
   - [Subcategory DataFrame](#subcategory-dataframe)
   - [Campaign DataFrame](#campaign-dataframe)
   - [Contacts DataFrame](#contacts-dataframe)
3. [Database Creation](#database-creation)
4. [Team Members](#team-members)
5. [References](#references)

---

## Project Overview
This project is focused on extracting, transforming, and loading (ETL) crowdfunding data into a structured relational database. The goal is to create multiple DataFrames, store them as CSV files, and import them into a PostgreSQL database following a defined schema.

---

## DataFrames Created
### Category DataFrame
- Contains a `category_id` column with sequential entries from `cat1` to `catn`.
- Contains a `category` column with category titles.
- Exported as `category.csv`.

### Subcategory DataFrame
- Contains a `subcategory_id` column with sequential entries from `subcat1` to `subcatn`.
- Contains a `subcategory` column with subcategory titles.
- Exported as `subcategory.csv`.

### Campaign DataFrame
- Includes columns:
  - `cf_id`
  - `contact_id`
  - `company_name`
  - `description`
  - `goal` (float data type)
  - `pledged` (float data type)
  - `outcome`
  - `backers_count`
  - `country`
  - `currency`
  - `launch_date` (converted to datetime format)
  - `end_date` (converted to datetime format)
  - `category_id` (matching the `category_id` in Category DataFrame)
  - `subcategory_id` (matching the `subcategory_id` in Subcategory DataFrame)
- Exported as `campaign.csv`.

### Contacts DataFrame
- Includes columns:
  - `contact_id`
  - `first_name`
  - `last_name`
  - `email`
- Exported as `contacts.csv`.

---

## Database Creation
- A database schema (`crowdfunding_db_schema.sql`) was created.
- The `crowdfunding_db` was created using this schema.
- Tables include proper primary and foreign keys to maintain relationships.
- CSV files were successfully imported into the respective tables.
- Data was validated using `SELECT *` statements.

---

## Team Members
- **Michael Bowman**
- **Adrian Williams**
- **Luke Roberts**

---

## References
This project leveraged **ChatGPT** for code assistance, structuring, and debugging throughout the ETL process.
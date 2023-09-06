# Project 2: Crowdfunding_ETL


For the ETL mini project we built an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and transform the data. After transforming the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.


The steps for this mini project are divided into the following subsections.

Created the following items:
- Campaign DataFrame
- Contacts DataFrame
- Crowdfunding Database
- Category and Subcategory DataFrames


Extracted and transformed the crowdfunding.xlsx Excel data to create category and sub-category DataFrames that contain the following columns:
- A "category_id" column and a "subcategory_id" column which has entries going sequentially from "cat1"/"subcat1" to "catn"/"subcatn", where n is the number of unique categories/subcategories
- A "category" column and a "subcategory" column that contains only the category/subcategory titles
- Produced a category DataFrame and a subcategory DataFrame
- The DataFrames were exported and saved as "category.csv" and "subcategory.csv" in the GitHub repository

Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame with the following columns:
- "cf_id" 
- "contact_id" 
- "company_name" 
- "blurb" (renamed to "description")
- "goal" (converted to the float data type)
- "pledged" (converted to the float data type)
- "outcome" 
- "backers_count" 
- "country" 
- "currency" 
- "launched_at" (renamed to "launch_date" with the UTC times converted to the datetime format)
- "deadline" (renamed to "end_date" with the UTC times converted to the datetime format)
- "category_id" (with unique identification numbers matching those in the "category_id" column of the category DataFrame)
- "subcategory_id" (with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame)

The DataFrame was exported and saved as "campaign.csv" in the GitHub repository.

Using Python dictionary methods, we extracted and transformed the data from the contacts.xlsx Excel data.

Imported the contacts.xlsx file into a DataFrame.
Iterated through the DataFrame and converted each row to a dictionary.
Iterated through each dictionary, doing the following:
- Extracted the dictionary values from the keys by using a Python list comprehension
- Added the values for each row to a new list
- Created a new DataFrame that contains the extracted data
- Split each "name" column value into a first and last name, and place each in a new column

The DataFrame was exported and saved as "contacts.csv" in the GitHub repository.


Finally, we inspected the four CSV files and sketched an ERD of the tables by using QuickDBDLinks to an external site.
- Used the information from the ERD to create a table schema for each CSV file.
- Constraints, data types, primary keys, and foreign keys have been specified.
- Saved the database schema as a Postgres file "crowdfunding_db_schema.sql", and saved it to this repository.

We created a new Postgres database named "crowdfunding_db".
- Used the database schema to create the tables in the correct order to handle the foreign keys.
- Verified the table creation by running a SELECT statement for each table.
- Imported each CSV file into its corresponding SQL table.
- Verified each table has the correct data by running a SELECT statement for each.

Screen shots of the tables, ERD, and database are included in the GitHub repository.


Resources:
- Office Hours
- Course exercises
- https://dataindependent.com/pandas/pandas-iterate-over-rows-5-methods/
- https://sparkbyexamples.com/pandas/iterate-over-rows-in-pandas-dataframe/
- https://www.w3schools.com/python/python_json.asp
- https://app.diagrams.net/
- https://stackoverflow.com/questions/3168644/can-a-table-field-contain-a-hyphen
- https://www.tektutorialshub.com/sql-server/float-real-data-types-in-sql-server/

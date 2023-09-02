# Project 2: Crowdfunding_ETL


For the ETL mini project we built an ETL pipeline using Python, Pandas, and Python dictionary methods to extract and transform the data. After transforming the data, we created four CSV files and used the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.


Instructions
The instructions for this mini project are divided into the following subsections:
Create the Category and Subcategory DataFrames
Create the Campaign DataFrame
Create the Contacts DataFrame
Create the Crowdfunding Database
Create the Category and Subcategory DataFrames


Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame that has the following columns:
- A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
- A "category" column that contains only the category titles
- Produce a category DataFrame.
- The DataFrame was exported and saved as "category.csv" in the GitHub repository.


Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame that has the following columns:
- A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
- A "subcategory" column that contains only the subcategory titles
- Produce a subcategory DataFrame.
- The DataFrame was exported and saved as "subcategory.csv" in the GitHub repository.


Campaign DataFrame
Extracted and transformed the crowdfunding.xlsx Excel data to create a campaign DataFrame with the following columns:
- The "cf_id" column
- The "contact_id" column
- The "company_name" column
- The "blurb" column, renamed to "description"
- The "goal" column, converted to the float data type
- The "pledged" column, converted to the float data type
- The "outcome" column
- The "backers_count" column
- The "country" column
- The "currency" column
- The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
- The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
- The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
- The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

The DataFrame was exported and saved as "campaign.csv" in the GitHub repository.


Contacts DataFrame
Using Python dictionary methods, we extracted and transformed the data from the contacts.xlsx Excel data:

Imported the contacts.xlsx file into a DataFrame.
Iterated through the DataFrame, converting each row to a dictionary.
Iterated through each dictionary, doing the following:
- Extracted the dictionary values from the keys by using a Python list comprehension.
- Added the values for each row to a new list.
- Created a new DataFrame that contains the extracted data.
- Split each "name" column value into a first and last name, and place each in a new column.

The DataFrame was exported and saved as "contacts.csv" in the GitHub repository.


Create the Crowdfunding Database
Inspected the four CSV files and sketched an ERD of the tables by using QuickDBDLinks to an external site.
Used the information from the ERD to create a table schema for each CSV file.
Constraints, data types, primary keys, and foreign keys have been specified.
Saved the database schema as a Postgres file "crowdfunding_db_schema.sql", and saved it to this repository.

Created a new Postgres database named "crowdfunding_db".
Used the database schema to create the tables in the correct order to handle the foreign keys.
Verified the table creation by running a SELECT statement for each table.
Imported each CSV file into its corresponding SQL table.
Verified each table has the correct data by running a SELECT statement for each.

Resources:
- Office Hours
- Course exercises
- https://dataindependent.com/pandas/pandas-iterate-over-rows-5-methods/
- https://sparkbyexamples.com/pandas/iterate-over-rows-in-pandas-dataframe/
- https://www.w3schools.com/python/python_json.asp
- https://app.diagrams.net/
- https://stackoverflow.com/questions/3168644/can-a-table-field-contain-a-hyphen
- https://www.tektutorialshub.com/sql-server/float-real-data-types-in-sql-server/

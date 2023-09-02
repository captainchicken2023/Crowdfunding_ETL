--Creating Tables with Primary Keys first

--Because the column "sub-category" contains a hyphen, quotes must be used every time this column is referenced. 
--Resource https://stackoverflow.com/questions/3168644/can-a-table-field-contain-a-hyphen

CREATE TABLE Subcategory (
	subcategory_id VARCHAR(12) NOT NULL,
	"sub-category" VARCHAR(30) NOT NULL UNIQUE,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Contacts (
	contact_id INT NOT NULL,
	first_name CHAR(30) NOT NULL,
	last_name CHAR(30) NOT NULL,
	email VARCHAR(50)  NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE Category (
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(30) NOT NULL UNIQUE,
	PRIMARY KEY (category_id)
);

--Creating Table with Foreign Keys
--Resource https://www.tektutorialshub.com/sql-server/float-real-data-types-in-sql-server/

CREATE TABLE Campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50),
	description VARCHAR(200),
	goal float,
	pledged float,
	outcome CHAR(12),
	backers_count INT,
	country CHAR(2),
	currency CHAR(3),
	launched_date DATE,
	end_date DATE,
	category VARCHAR(30) NOT NULL,
	"sub-category" VARCHAR(30) NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(12) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY ("sub-category") REFERENCES Subcategory("sub-category"),
	FOREIGN KEY (category) REFERENCES Category(category)
);

--Running Select * statements one at a time to verify table creation.

Select * from Subcategory;

Select * from Contacts;

Select * from Category;

Select * from Campaign;






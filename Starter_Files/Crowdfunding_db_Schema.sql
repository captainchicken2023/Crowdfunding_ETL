CREATE TABLE Contacts (
	contact_id INT NOT NULL,
	first_name CHAR(30) NOT NULL,
	last_name CHAR(30) NOT NULL,
	email VARCHAR(50)  NOT NULL,
	PRIMARY KEY (contact_id)
);

CREATE TABLE Category (
	category_id VARCHAR(12) NOT NULL,
	category VARCHAR(30) NOT NULL,
	PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
	subcategory_id VARCHAR(5) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

CREATE TABLE Campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(50),
	description VARCHAR(200),
	goal INT,
	pledged INT,
	outcome CHAR(12),
	backers_count INT,
	country CHAR(2),
	currency CHAR(3),
	launched_date DATE,
	end_date DATE,
	category VARCHAR(30) NOT NULL,
	subcategory VARCHAR(30) NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(12) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)	
);


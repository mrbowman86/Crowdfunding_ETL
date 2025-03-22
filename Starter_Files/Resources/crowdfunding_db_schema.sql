##################################################
DROP TABLE IF EXISTS contacts;

CREATE TABLE contacts(
	contact_id INT NOT NULL,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	email VARCHAR(100) NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT * FROM contacts;
##################################################
DROP TABLE IF EXISTS category;

CREATE TABLE category(
	category_id VARCHAR(5) NOT NULL,
	category VARCHAR(25) NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT * FROM category;
##################################################
DROP TABLE IF EXISTS subcategory;

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) NOT NULL,
	subcategory VARCHAR(25) NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT * FROM subcategory;
##################################################
DROP TABLE IF EXISTS campaign;

CREATE TABLE campaign(
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(50) NOT NULL,
	description VARCHAR(75) NOT NULL,
	goal NUMERIC NOT NULL,
	pledged NUMERIC NOT NULL,
	outcome VARCHAR(25) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(5) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
	PRIMARY KEY (cf_id)
);

SELECT * FROM campaign;
##################################################
CREATE TABLE contacts(
contact_id INT NOT NULL, 
first_name VARCHAR(25),
last_name VARCHAR(25),
email VARCHAR(64),
PRIMARY KEY (contact_id));

CREATE TABLE category(
category_id VARCHAR(10) NOT NULL,
category VARCHAR(25)NOT NULL,
PRIMARY KEY(category_id));


CREATE TABLE subcategory(
subcategory_id VARCHAR(10) NOT NULL,
subcategory VARCHAR(25)NOT NULL,
PRIMARY KEY(subcategory_id));


CREATE TABLE campaign(
cf_id INT,
contact_id INT NOT NULL,
company_name VARCHAR,
description VARCHAR,
goal FLOAT,
pledged FLOAT,
outcome VARCHAR(25),
backers_count INT,
country VARCHAR(25),
currency VARCHAR(25),
launch_date DATE,
end_date DATE,
staff_pick VARCHAR(25),
spotlight VARCHAR(25),
category VARCHAR(25),
subcategory VARCHAR(25),
category_id VARCHAR(25),
subcategory_id VARCHAR(25),
PRIMARY KEY (cf_id),
FOREIGN KEY(category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));
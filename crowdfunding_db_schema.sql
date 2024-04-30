 CREATE TABLE category(
     category_id VARCHAR(30),
	 category VARCHAR(30),
	 PRIMARY KEY(category_id)
 );
 
 SELECT * FROM category;
 
 
 CREATE TABLE subcategory(
     subcategory_id VARCHAR(30),
	 subcategory VARCHAR(30),
	 Primary key (subcategory_id)
 );
 
 SELECT * FROM subcategory;
 
 CREATE TABLE campaign(
     cf_id INT,
	 contact_id INT,
	 company_name VARCHAR(100),
	 description VARCHAR(100),
	 goal FLOAT,
	 pledged float,
	 outcome VARCHAR(30),
	 backers_count INT,
	 country VARCHAR(30),
	 currency VARCHAR(30),
	 Launched_date DATE,
	 end_date DATE,
	 category_id VARCHAR(30),
	 subcategory_id VARCHAR(30),
	 PRIMARY KEY(contact_id),
	 FOREIGN KEY(category_id) REFERENCES category (category_id),
	 FOREIGN key(subcategory_id) REFERENCES subcategory (subcategory_id)
 );
 
 SELECT * FROM campaign;
 
 CREATE TABLE contacts(
     contact_id INT,
	 first_name VARCHAR(30),
	 last_name VARCHAR(30),
	 email VARCHAR(50),
	 foreign key (contact_id) REFERENCES campaign (contact_id)
 );
 
 SELECT * FROM contacts;
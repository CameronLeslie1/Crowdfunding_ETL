Create Table category (
	category_id varchar not null,
	category_name varchar not null,
	primary key (category_id));
	
select * from category
	
Create Table subcategory (
	subcategory_id varchar not null,
	subcategory_name varchar not null,
	primary key (subcategory_id));
	
select * from subcategory
	
Create Table contacts (
	contact_id int not null,
	first_name varchar not null,
	last_name varchar not null,
	email varchar not null,
	primary key (contact_id));
	
select * from contacts
	
CREATE TABLE campaign (
	cf_id int not null,
	contact_id int not null,
	company_name varchar not null,
	description text not null,
	goal numeric(10,2) not null,
	pledged numeric(10,2) not null,
	outcome varchar not null,
	backers_count int not null,
	country varchar not null,
	currency varchar not null,
	launch_date date not null,
	end_date date not null,
	category_id varchar not null,
	subcategory_id varchar not null,
	primary key (cf_id),
	foreign key (contact_id) references contacts (contact_id),
	foreign key (category_id) references category (category_id),
	foreign key (subcategory_id) references subcategory (subcategory_id));

select * from campaign


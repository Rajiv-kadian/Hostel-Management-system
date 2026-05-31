CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_id VARCHAR(20) UNIQUE,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    role VARCHAR(20),
    room VARCHAR(10),
    fee DECIMAL(10,2),
    fine DECIMAL(10,2)
);

INSERT INTO users
(user_id,name,email,password,role,room,fee,fine)
VALUES

('MAN101','Hostel Manager','manager@hostel.com','admin123','manager','-',0,0),

('STU101','Aman Singh','aman101@gmail.com','1234','student','101',35000,0),
('STU102','Rahul Kumar','rahul102@gmail.com','1234','student','101',35000,500),
('STU103','Vivek Sharma','vivek103@gmail.com','1234','student','102',35000,0),
('STU104','Aditya Verma','aditya104@gmail.com','1234','student','102',35000,200),
('STU105','Karan Gupta','karan105@gmail.com','1234','student','103',35000,0),
('STU106','Mohit Jain','mohit106@gmail.com','1234','student','103',35000,0),
('STU107','Arjun Singh','arjun107@gmail.com','1234','student','104',35000,100),
('STU108','Rohit Mehta','rohit108@gmail.com','1234','student','104',35000,0),
('STU109','Yash Patel','yash109@gmail.com','1234','student','105',35000,0),
('STU110','Nikhil Shah','nikhil110@gmail.com','1234','student','105',35000,300),

('STU111','Harsh Joshi','harsh111@gmail.com','1234','student','106',35000,0),
('STU112','Sahil Arora','sahil112@gmail.com','1234','student','106',35000,0),
('STU113','Manav Gupta','manav113@gmail.com','1234','student','107',35000,0),
('STU114','Ankit Yadav','ankit114@gmail.com','1234','student','107',35000,150),
('STU115','Pranav Mishra','pranav115@gmail.com','1234','student','108',35000,0),
('STU116','Rishi Kumar','rishi116@gmail.com','1234','student','108',35000,0),
('STU117','Deepak Sharma','deepak117@gmail.com','1234','student','109',35000,400),
('STU118','Akash Jain','akash118@gmail.com','1234','student','109',35000,0),
('STU119','Tarun Gupta','tarun119@gmail.com','1234','student','110',35000,0),
('STU120','Sandeep Kumar','sandeep120@gmail.com','1234','student','110',35000,250),

('STU121','Aayush Verma','aayush121@gmail.com','1234','student','201',35000,0),
('STU122','Rajat Singh','rajat122@gmail.com','1234','student','201',35000,0),
('STU123','Shivam Patel','shivam123@gmail.com','1234','student','202',35000,0),
('STU124','Lokesh Gupta','lokesh124@gmail.com','1234','student','202',35000,500),
('STU125','Anmol Sharma','anmol125@gmail.com','1234','student','203',35000,0),
('STU126','Vikas Jain','vikas126@gmail.com','1234','student','203',35000,0),
('STU127','Abhishek Singh','abhishek127@gmail.com','1234','student','204',35000,200),
('STU128','Rohit Yadav','rohit128@gmail.com','1234','student','204',35000,0),
('STU129','Kushagra Verma','kushagra129@gmail.com','1234','student','205',35000,0),
('STU130','Ayush Gupta','ayush130@gmail.com','1234','student','205',35000,0),

('STU131','Gaurav Kumar','gaurav131@gmail.com','1234','student','206',35000,0),
('STU132','Mayank Sharma','mayank132@gmail.com','1234','student','206',35000,0),
('STU133','Tushar Jain','tushar133@gmail.com','1234','student','207',35000,100),
('STU134','Nitin Gupta','nitin134@gmail.com','1234','student','207',35000,0),
('STU135','Kartik Singh','kartik135@gmail.com','1234','student','208',35000,0),
('STU136','Saurabh Kumar','saurabh136@gmail.com','1234','student','208',35000,300),
('STU137','Yuvraj Patel','yuvraj137@gmail.com','1234','student','209',35000,0),
('STU138','Prince Sharma','prince138@gmail.com','1234','student','209',35000,0),
('STU139','Dinesh Verma','dinesh139@gmail.com','1234','student','210',35000,0),
('STU140','Hemant Gupta','hemant140@gmail.com','1234','student','210',35000,500),

('STU141','Ashish Kumar','ashish141@gmail.com','1234','student','301',35000,0),
('STU142','Piyush Singh','piyush142@gmail.com','1234','student','301',35000,0),
('STU143','Varun Sharma','varun143@gmail.com','1234','student','302',35000,0),
('STU144','Rakesh Jain','rakesh144@gmail.com','1234','student','302',35000,100),
('STU145','Sumit Gupta','sumit145@gmail.com','1234','student','303',35000,0),
('STU146','Naveen Kumar','naveen146@gmail.com','1234','student','303',35000,0),
('STU147','Bhavesh Singh','bhavesh147@gmail.com','1234','student','304',35000,250),
('STU148','Kunal Sharma','kunal148@gmail.com','1234','student','304',35000,0),
('STU149','Rohan Gupta','rohan149@gmail.com','1234','student','305',35000,0);
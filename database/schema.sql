
CREATE DATABASE hostel_management;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  user_id VARCHAR(50),
  name VARCHAR(100),
  email VARCHAR(100),
  password VARCHAR(100),
  role VARCHAR(20),
  room VARCHAR(20),
  fee DECIMAL,
  fine DECIMAL
);

INSERT INTO users
(user_id,name,email,password,role,room,fee,fine)
VALUES
('STU101','Rahul Kumar','rahul@gmail.com','1234','student','203',35000,500),

('STU102','Aman Singh','aman@gmail.com','1234','student','105',35000,0),

('MAN101','Hostel Manager','manager@gmail.com','admin123','manager','-',0,0);

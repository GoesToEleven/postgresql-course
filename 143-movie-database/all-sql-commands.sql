-- CREATE DATABASE movies;

DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS movies CASCADE;
DROP TABLE IF EXISTS rentals CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS department CASCADE;

CREATE TABLE customers(
    cid SERIAL PRIMARY KEY, 
    cname VARCHAR(50) NOT NULL
);

CREATE TABLE movies(
    mid SERIAL PRIMARY KEY, 
    mname TEXT NOT NULL 
);

CREATE TABLE rentals(
    rid SERIAL PRIMARY KEY, 
    cid INT REFERENCES customers NOT NULL, 
    mid INT REFERENCES movies NOT NULL
);

CREATE TABLE employees(
   eID SERIAL PRIMARY KEY,
   eName VARCHAR(50) NOT NULL
);

CREATE TABLE department(
   dID SERIAL PRIMARY KEY,
   dept VARCHAR(50), 
   eID INT REFERENCES employees
);
-- NOTE dept and eID can be NULL to illustrate joins


INSERT INTO customers (cname) VALUES 
('James'),
('Moneypenny'),
('Q'),
('M'),
('Ian'),
('Fleming'),
('Bruce'),
('Tyler');

INSERT INTO movies (mname) VALUES 
('Ex Machina'),
('A Man Called Ove'),
('The Lives of Others'),
('Intouchables'),
('Limitless'),
('Kumare'),
('The Fog of War'),
('Forks Over Knives');

INSERT INTO rentals (cid, mid) VALUES 
(2,3), 
(2,4), 
(4,1), 
(3,6), 
(1,4), 
(5,2), 
(6,1), 
(5,5), 
(4,3), 
(3,1), 
(2,2), 
(1,3), 
(1,4), 
(2,6), 
(4,5);

INSERT INTO employees (ename) VALUES 
('Stacey'),
('Shelley'),
('Samantha'),
('Shannon'),
('Sherry'),
('Sylvia');

INSERT INTO department (dept, eid) VALUES
('Sales', 1),
('Sales', 2),
('Sales', 3),
('Manager', 4),
('Owner', null);

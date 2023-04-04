/*
Assignment Details:-
1. Write a query to create a databases;
2. Write a query to create one table with 10 fields.
*/

# 1. Solution
create database my_clients;

# 2. Solution
Select database();
Use my_clients;
Create table customers
      (
       Cust_idy   INT,
       suffix     VARCHAR(3) NULL,
       First_name VARCHAR(20) NOT NULL,
       Last_name  VARCHAR(15) NOT NULL,
       mail_idy   VARCHAR(30) NOT NULL,
       age        INT,
       sex        VARCHAR(1) NULL,
       course     VARCHAR(5) NOT NULL,
       location   VARCHAR(20) NOT NULL,
       job_role   VARCHAR(35) NOT NULL
      );
explain customers;  #Display table contents
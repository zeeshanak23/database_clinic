#!/bin/bash
service mysql start

mysql -u root -p

mysql -u root -p -e "CREATE DATABASE clinic";

mysql -u root -p -e "USE clinic";

mysql -u root -p -e "CREATE table appointment(name VARCHAR(25),location VARCHAR(25),phoneNumber BIGINT,date VARCHAR(25))";

mysql -u root -p -e "INSERT INTO appointment(name,location,phoneNumber,date) 
VALUES("sachin","dhanbad",787656657,"10.10.2023")";

mysql -u root -p -e "SELECT * FROM appointment"; 
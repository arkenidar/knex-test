-- mysql

create database knex_test;

CREATE TABLE knex_test.newtable (
    column1 text,
    column2 text
);

insert into newtable (column1,column2)
values ("example column 1","example column 2");

-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';

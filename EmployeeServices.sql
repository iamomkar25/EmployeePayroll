use payroll;
create Table empoyee_payrolls1
(
id int identity(1,1) primary key,
name varchar(200) not null,
salary float,
startDate date
)
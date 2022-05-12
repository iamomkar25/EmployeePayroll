use payroll;


Insert into empoyee_payrolls1(name,salary,startDate) values
('omkar',20000,'2021-03-12'),
('bunty',25000,'2021-04-18'),
('gaurav',10000,'2020-05-13'),
('Arun',30000,'2020-08-19');

--UC-4 Retrieve All data--

select * from empoyee_payrolls1;

------ UC 5: Select Query using Cast() an GetDate() -------
select salary from empoyee_payrolls1 where name='omkar';
select salary from empoyee_payrolls1 where startDate BETWEEN Cast('2020-12-20' as Date) and GetDate();

------ UC 6: Add Gender Column and Update Table Values -------
Alter table empoyee_payrolls1
add Gender char(1);

Update empoyee_payrolls1 
set Gender='M'
where name='omkar';

Update empoyee_payrolls1 
set Gender='F'
where name='gaurav' or name='bunty'or name='Arun';

------- UC 7: Use Aggregate Functions and Group by Gender -------

select Sum(salary) as "TotalSalary",Gender from empoyee_payrolls1 group by Gender;
select Avg(salary) as "AverageSalary",Gender from empoyee_payrolls1 group by Gender;
select Min(salary) as "MinimumSalary",Gender from empoyee_payrolls1 group by Gender;
select Max(salary) as "MaximumSalary",Gender from empoyee_payrolls1 group by Gender;
select count(salary) as "CountSalary",Gender from empoyee_payrolls1 group by Gender;

Alter table empoyee_payrolls1
add EmployeePhoneNumber BigInt,EmployeeDepartment varchar(200) not null default 'Publish',Address varchar(200) default 'Not Provided';

Update empoyee_payrolls1 
set EmployeePhoneNumber='7774962478',EmployeeDepartment='Editing',Address='sangmeshwar'
where name='omkar';

Update empoyee_payrolls1 
set EmployeePhoneNumber='7774962489',Address='mumbai'
where name ='gaurav';

Update empoyee_payrolls1 
set EmployeePhoneNumber='7775862478',EmployeeDepartment='Management',Address='pune'
where name ='bunty';

Update empoyee_payrolls1 
set EmployeePhoneNumber='8884962478',Address='devrukh'
where name ='Arun';
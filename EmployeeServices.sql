use payroll;






EXEC sp_RENAME 'empoyee_payrolls1.Basic Pay' , 'BasicPay', 'COLUMN'
Alter table empoyee_payrolls1
add Deduction float,TaxablePay float, IncomeTax float,NetPay float;
Update empoyee_payrolls1 
set Deduction=1000
where Gender='F';
Update empoyee_payrolls1 
set Deduction=2000
where Gender='M';
update empoyee_payroll
set NetPay=(BasicPay - Deduction)
update empoyee_payrolls1
set TaxablePay=0,IncomeTax=0
select * from empoyee_payrolls1;


------ UC 10: Adding another Value for Rujula in Editing Department -------

Insert into empoyee_Payrolls1(name,BasicPay,StartDate,Address,EmployeePhoneNumber,EmployeeDepartment) values ('omkar',250000,'2019-04-20','mumbai','7774962478','Editing');
select * from empoyee_payrolls1;
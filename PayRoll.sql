--UC1 Create Data Base
create database Payroll_Service;
--UC2 Create Table
create table EmployeePayroll(ID int identity(1,1)primary key, EmpName varchar(200), Salary bigint,
 StartDate date)
 --UC3 Insert Record
 insert into EmployeePayroll values('Raj', 20000, '2020-12-12')
 --UC4 Retrive data
 select * from EmployeePayroll
  insert into EmployeePayroll values('Bim', 20000, '2020-06-06')
  --UC5 
  insert into EmployeePayroll values('Nag', 25000, '2021-05-03')
insert into EmployeePayroll values('Aru', 35000, '2018-05-01')
insert into EmployeePayroll values('Kit', 32000, '2019-09-01')
 select * from EmployeePayroll
  select * from EmployeePayroll where StartDate BETWEEN CAST('2020-01-01' as date) and GETDATE()
  --UC6 Update Record
  alter table EmployeePayroll add Gender char (1)
    select * from EmployeePayroll
	update EmployeePayroll set Gender='M' Where EmpName='Bim'
	update EmployeePayroll set Gender='F' Where EmpName='Raj'
	update EmployeePayroll set Gender='M' Where EmpName='Nag'
	update EmployeePayroll set Gender='F' Where EmpName='Aru'
	update EmployeePayroll set Gender='M' Where EmpName='Kit'
	--UC7 Sum, Avg, Min, Max, Count
	select Sum(Salary) from EmployeePayroll where Gender='M' group by Gender
	select Sum(Salary) as Total_Sum from EmployeePayroll where Gender='M' group by Gender
	select Avg(Salary) as Total_Avg from EmployeePayroll where Gender='M' group by Gender
	select Min(Salary) as Minsalary from EmployeePayroll where Gender='M' group by Gender
	select Max(Salary) as Maxsalary from EmployeePayroll where Gender='M' group by Gender
	select COUNT (*)TotalRecord from EmployeePayroll
	--UC8 Adding Columns
	alter table EmployeePayroll add PhoneNumber bigint, Address varchar (200) default ('Test1'),
	 Department varchar (200) not null default ('test');
	    select * from EmployeePayroll
	--UC9 Extend Table
	alter table EmployeePayroll add BasicPay int ,Deductions int, TaxablePay int,IncomeTax int, NetPay int
	 select * from EmployeePayroll
	 --UC10 
	 insert into EmployeePayroll values ('Terissa', 36000, '2019-02-02','F', 9888999966, 'BGK', 'IT', 
	 15000, 5000,4000, 2000,25000)
	  select * from EmployeePayroll


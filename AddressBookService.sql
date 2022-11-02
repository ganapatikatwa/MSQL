--UC1 Create data base
create database AddressBookService
--UC2 Create table
create table AddressBook (FirstName varchar (200), LastName varchar (200), Address varchar (200),
City varchar (200), State varchar (200), Zip int , PhoneNumber bigint, Email varchar (200))
--UC 3 Adding Contact
insert into AddressBook values('ganu', 'katwa', 'gld', 'gld', 'kar', 587, 9886655522, 'ganu@gmail.com')
select * from AddressBook
--UC 4 Edit Contact
update AddressBook set State= 'MH' where FirstName='ganu'
select * from AddressBook
--UC 5 Delete Person 
insert into AddressBook values('kitta', 'chilveri', 'blm', 'blm', 'tn', 665, 854986632, 'kitta@gmail.com')
delete AddressBook where LastName='katwa'
select * from AddressBook
--UC 6 Retrive person using state
insert into AddressBook values('Aru', 'hadimani', 'bng', 'bng', 'mh', 989, 8867677950, 'aru@gmail.com')
insert into AddressBook values('man', 'beinal', 'ckd', 'ckd', 'tn', 456, 5577669988, 'man@gmail.com')
insert into AddressBook values('ganu', 'katwa', 'gld', 'gld', 'kar', 587, 9886655522, 'ganu@gmail.com')
select * from AddressBook where State= 'tn'
select * from AddressBook where City= 'ckd'
--UC7 the size of address book
select count (State) totalrecord from AddressBook
select * from AddressBook
--UC 8 sorted alphabetically by Person’s name for a given city
select * from AddressBook Order By FirstName ASC
select * from AddressBook Order By FirstName DESC
--UC 9 Address Book with name and Type.
alter table AddressBook add Name varchar (200), Type varchar (200)
select * from AddressBook
update AddressBook set Type='Friend' where FirstName='aru'
update AddressBook set Type='Family' where FirstName='man'
update AddressBook set Type='Profession' where FirstName='kitta'
update AddressBook set Type='Family' where FirstName='ganu'
select * from AddressBook
--UC 10 count by type
select count (Type) from AddressBook where Type= 'Family'
select count (Type) from AddressBook where Type= 'Profession'
select count (Type) from AddressBook where Type= 'Friend'
--UC 11 add person to both Friend and Family
insert into AddressBook values ('nag', 'katwa', 'bgk', 'bgk', 'kar', 587, 9886655522, 'nag@gmail.com', 'nag',
'Friend And Family' )
select * from AddressBook






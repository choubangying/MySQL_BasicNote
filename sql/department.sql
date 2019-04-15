create table department(
	deptno int primary key auto_increment,
	deptname varchar(20)
) engine=MyISAM DEFAULT CHARSET=utf8;

insert into department (deptno,deptname) values (20,'develop');
insert into department (deptno,deptname) values (30,'manager');


create table emploee(
	emploeeid int primary key auto_increment,
	name varchar(20),
	deptno int 
) engine=MyISAM DEFAULT CHARSET=utf8;

insert into emploee (name,deptno) values ('zhangsan',20);
insert into emploee (name,deptno) values ('lisi',20);
insert into emploee (name,deptno) values ('wangwu',30);


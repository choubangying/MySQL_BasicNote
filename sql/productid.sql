create table productid(
	id int primary key auto_increment,
	productname varchar(20),
	parentid int
) engine=InnoDB DEFAULT CHARSET=utf8;

insert into productid (productname) values ('鼠标');
insert into productid (productname,parentid) values ('无线鼠标','1');
insert into productid (productname,parentid) values ('有线鼠标','1');


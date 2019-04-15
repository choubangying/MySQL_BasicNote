## MySQL表的DML操作

### 1.插入语句

```mysql
insert into table_name (col1,col2,col3...) values (val1,val2,val3...)

#插入可以只插入一部分数据
insert into table_name (col1,col3) values (val1,val3)
#MySQL支持插入多行数据
insert into table_name (col1,col2,col3...) values (val1,val2,val3...),
												  (val1,val2,val3...)
#注：val为字符串时使用''包裹
```

### 2.更新语句

```mysql
update table_name set col1=val1,col2=val2,... [where conditicon]

#当没有where condition的时候修改全表
update t_student set name='wy' where id=3;
#最好不要修改主键，修改后不能使用之前的主键去操作数据
```

### 3.删除语句

```mysql
delete from table_name [where condition]

#当没有where condition的时候将会清空此表

```


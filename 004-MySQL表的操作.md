## MySQL表的操作

### 1.创建表

1. 进入某个数据库（use database_name；）

2. 输入建表命令

   ```mysql
   create table table_name(
   	列名1 类型 [约束]，
   	列名2 类型 [约束]，
   	....
   	列名2 类型 [约束]，
   )[ENGINE=InnoDB] [DEFAULT] [CHARSET=utf8];
   #其中[]包裹的内容表示可选。
   #每一列名类型后面的约束可以有多个
   #不填某些约束时，MySQL会自动帮我们添加
   
   #--------------------------------#
   
   #例如我们使用如下命令建表：
   create table t_student(
   	id int,
       name varchar(20),
       age int
   );
   #创建表后,进navicat查看对象信息里的DLL实际为如下：
   CREATE TABLE `t_student` (
     `id` int(11) DEFAULT NULL,
     `name` varchar(20) DEFAULT NULL,
     `age` int(11) DEFAULT NULL
   ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
   #可见MySQL为我们自动添加了某些约束
   ```

### 2.删除表

删除表使用 drop table table_name;

### 3.查看表的结构

查看表的结构使用 desc table_name；

### 4.表的约束

1. 非空约束： NOT NULL，不允许某列的内容为空
2. 设置列的默认值：DEFAULT 具体值
3. 唯一约束：UNIQUE，在该表中，该列的内容必须唯一
4. 主键约束：PRIMARY KEY，在该表中，该列的内容非空且唯一
5. 主键自增：AUTO_INCREMENT，从1开始，步长为1
6. 外键约束：FOREIGAN KEY

主键设计：

1. 使用单列作为主键
2. 使用没有业务含义的列作为主键

```mysql
#示例，使用id做主键且支持主键自增
create table t_student(
	id int primary key auto_increment,
    name varchar(20),
    age int
);
```




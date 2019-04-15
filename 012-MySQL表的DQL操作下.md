## MySQL表的DQL操作下

外键约束：

```
当做多表查询的时候，我们希望指定约束来结合两张表，第一张表的某一列就必须满足第二张的某一列的条件
这种约束称为外键约束
只有InnoDB才支持外键，MyISAM不支持
设置外键需要关联两个表的两个列

改变表的存储引擎使用 alter table 表名 engine='InnoDB';
```

使用navicat客户端操作表添加外键：

![](F:\02-DevelopStudyNote\003-C++后台开发系列\005-MySQL相关\pic\MySQL 外键.png)

添加后我们查看建表语句如下：

```sql
CREATE TABLE `emploee` (
  `emploeeid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `deptno` int(11) DEFAULT NULL,
  PRIMARY KEY (`emploeeid`),
  KEY `deptno` (`deptno`),
  CONSTRAINT `emploee_ibfk_1` FOREIGN KEY (`deptno`) REFERENCES `department` (`deptno`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
```

使用了外键以后向表里插入新的数据项的时候就必须满足外键所在表列的规则

此处就是emploee这个表的deptno必须符合department表的deptno，否则会报错
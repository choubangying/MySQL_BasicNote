## MySQL表的DQL操作下

多表查询：

将多个表的内容结合成一张表来做查询

### 笛卡尔积

由多个表结合成一个表的时候会产生笛卡尔积现象。

```sql
示例：
现有A (x, y) B(i, j, k)
两两结合有如下情况
(x, i) (x, j) (x, k) (y, i) (y, j) (y, k)
此结果中的某些项是无效的，需要消除
消除笛卡尔积需要指定消除条件

示例：
select * from emploee,department; => 未消除笛卡尔积（未指定条件）
结果如下：
+-----------+----------+--------+--------+----------+
| emploeeid | name     | deptno | deptno | deptname |
+-----------+----------+--------+--------+----------+
|         1 | zhangsan |     20 |     20 | develop  |
|         1 | zhangsan |     20 |     30 | manager  |
|         2 | lisi     |     20 |     20 | develop  |
|         2 | lisi     |     20 |     30 | manager  |
|         3 | wangwu   |     30 |     20 | develop  |
|         3 | wangwu   |     30 |     30 | manager  |
+-----------+----------+--------+--------+----------+

select * from emploee,department where emploee.deptno = department.deptno;
结果如下：
+-----------+----------+--------+--------+----------+
| emploeeid | name     | deptno | deptno | deptname |
+-----------+----------+--------+--------+----------+
|         1 | zhangsan |     20 |     20 | develop  |
|         2 | lisi     |     20 |     20 | develop  |
|         3 | wangwu   |     30 |     30 | manager  |
+-----------+----------+--------+--------+----------+
```


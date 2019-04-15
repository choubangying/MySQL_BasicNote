## MySQL表的DQL操作--分页查询

分页查询

```sql
格式：
select * from 表名 limit x,y;
x:数据项下标，从0开始
y:分页的大小
查询第n页：
select * from product limit (n - 1) * y,y;
示例：
select * from product limit 2,2;
结果如下：
+----+----------+-------+
| id | name     | price |
+----+----------+-------+
|  3 | 罗技m3   |    30 |
|  4 | 罗技m4   |    30 |
+----+----------+-------+
```


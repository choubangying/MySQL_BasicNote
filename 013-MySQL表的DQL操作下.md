## MySQL表的DQL操作下--自连接查询

自连接查询就是用一张表的内容来做多表查询：

```
如下表：
+----+-------------+----------+
| id | productname | parentid |
+----+-------------+----------+
|  1 | 鼠标         |     NULL |
|  2 | 无线鼠标     |        1 |
|  3 | 有线鼠标     |        1 |
+----+-------------+----------+

需要将鼠标的parentid的内容展示出来：
select child.id,child.productname,parent.productname parentname
from productid child,productid parent
where child.parentid=parent.id;
结果如下：
+----+-------------+------------+
| id | productname | parentname |
+----+-------------+------------+
|  2 | 无线鼠标     | 鼠标        |
|  3 | 有线鼠标     | 鼠标        |
+----+-------------+------------+
```


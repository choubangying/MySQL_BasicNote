## MySQL数据库的备份和恢复

1. 备份

```
mysqldump -uuser -ppasswd database_name > path/bk_name.sql
使用user账户并指明passwd登录到数据库然后备份database_name这个数据库到path目录下名字为bk_name。sql的文件
```

2. 恢复

```
mysql -uuser -ppasswd database_name < path/bk_name.sql
使用user账户并指明passwd登录到数据库然后将database_name这个数据库从path目录下名字为bk_name。sql的文件还原
```


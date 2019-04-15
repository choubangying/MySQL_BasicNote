## MySQL数据库分类及数据库操作

### 一。数据库分类

MySQL数据库分成两类

1. 系统数据库
2. 用户数据库

使用navicat连接上数据库查看，如下：

![](C:\Users\Administrator\Desktop\1.png)

系统数据库存储了MySQL的一些信息和管理配置类的东西

参见https://blog.csdn.net/cainiao000001/article/details/80502549

### 二。数据库常用操作

1. 查看数据库

   show databases;

   如下：

   ![](C:\Users\Administrator\Desktop\1.png)

2. 使用具体数据库

   use database_name; 

   其中database_name是你具体想看的数据库的名字

   如下：

   

3. 查看数据库的表

   show tables;

4. 新建数据库

   create database database_name;

   其中database_name是你具体想创建的数据库的名字

5. 删除数据库

   drop database database_name;

   其中database_name是你具体想删除的数据库的名字
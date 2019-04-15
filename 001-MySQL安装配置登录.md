## MySQL安装配置

### 一。安装

在ubuntu16.04下的安装：

1. sudo apt-get install mysql-server
2. sudo apt-get install libmysqlclient-dev

安装完成后终端键入如下命令查看服务是否启动：

service mysql status

结果如下说明服务已启动：

![](C:\Users\Administrator\Desktop\1.png)

### 二。MySQL的启动停止和重启

MySQL安装后在Ubuntu里被做成了service，所以我们可以使用service的那一套东西来启停和状态查看

```
注：service命令本身是一个shell脚本，它在/etc/init.d/目录查找指定的服务脚本，然后调用该服务脚本来完成任务。
```

1. 服务的状态查看

   sudo service mysql status

2. 启动服务

   sudo service mysql start

3. 停止服务

   sudo service mysql stop

4. 重启服务

   sudo service mysql restart

5. MySQL端口使用情况

   netstat -ano | grep mysql

   或

   sudo lsof -i -Pn | grep mysql

   MySQL默认端口3306

### 三。MySQL安装后文件相关布局

参见https://www.cnblogs.com/dpf-learn/p/7513025.html

### 四。MySQL的数据引擎

参见https://www.cnblogs.com/kevingrace/p/5685355.html

缺省使用InnoDB

### 五。MySQL的登录

1. 终端登录

   在终端键入 mysql -uroot -p，在提示下输入密码即可，如下：

   ![](C:\Users\Administrator\Desktop\1.png)

2. navicat登录

   在windows上使用navicat登录mysql，需打开linux的防火墙对3306的限制

   防火墙参见：https://www.cnblogs.com/EasonJim/p/6851007.html

   还需要修改MySQL的配置文件使他支持其他主机登录

   修改参见：https://www.cnblogs.com/zkfopen/p/9469787.html

   这样配置好之后就可以在windows上使用navicat连接Linux数据库了，如下：

   ![](C:\Users\Administrator\Desktop\1.png)

 
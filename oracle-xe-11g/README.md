
Install: 
```
> docker build magex9/oracle-xe-11g
```

Run:
```
> docker run -d -p 49160:22 -p 49161:1521 magex9/oracle-xe-11g
```

Login:
```
> ssh root@localhost -p 49160
password: admin
```

Oracle:
```
> sqlplus
Enter user name: system
Enter password: oracle
```

Create a table:
```create table t (name varchar2(20) );```

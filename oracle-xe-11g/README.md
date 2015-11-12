
Install: 
```
> docker build magex9/oracle-xe-11g
```

Run:
```
> docker run -d -p 49160:22 -p 49161:1521 magex9/oracle-xe-11g
```

*Be patient, this takes a while to start up*

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
```
create table t (name varchar2(20) );
```

Run PL/SQL:
```
SET SERVEROUTPUT ON;

BEGIN
   dbms_output.put_line('Hello, World!');
END;
```

Connect database with following setting:
```
hostname: localhost
port: 49161
sid: xe
username: system
password: oracle
```
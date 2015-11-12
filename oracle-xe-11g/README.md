
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
CREATE TABLE NAMES (NAME VARCHAR2(20));
INSERT INTO NAMES (NAME) VALUES ('Scott');
SELECT * FROM NAMES;
```

Create a view:
```
CREATE VIEW VW_NM (NM) AS SELECT NAME FROM NAMES;
INSERT INTO VW_NM (NM) VALUES ('View Insert');
SELECT * FROM VW_NM;
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
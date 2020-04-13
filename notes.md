## 5 Basic SQL Commands: 

* Create
* Insert
* Select
* Update
* Delete

## These commands are divided into 2 types:

* DDL Statements (Data Definition Language)
    * Define, Change or Drop Data
* DML Statements (Data Manipulation Language)
    * Read and Modify Data

# Creating Tables:

## Syntax:

```sql
create table TABLENAME (
    COLUMN1 datatype,
    COLUMN2 datatype,
    COLUMN3 datatype,
        ...
    ) ;
```
## Examples:

Varchar - Variable Character
```sql
create table TEST (
    ID integer,
    NAME varchar(30)
    );
```

Char-Fixed Character
```sql
create table COUNTRY (
    ID int,
    CCODE char(2),
    NAME varchar(60)
    );
```

Setting the Primary Key to ID
```sql
create table COUNTRY (
    ID int NOT NULL,
    CCODE char(2),
    NAME varchar(60),
    PRIMARY KEY (ID)
    );
```

Droping and creating table:
```sql
drop table COUNTRY;
create table COUNTRY (
    ID integer PRIMARY KEY NOT NULL,
    CCODE char(2),
    NAME varchar(60)
    );
```

```sql

```
```sql

```

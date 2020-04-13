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

# Select Statement:

Used for: 

* Retreiving Data from the Table.
* This is a DML Statement
* Select Statement: Query
* Result of Select: Result Set/Table

## Syntax:

```sql
select * from <tablename>
```

```sql
select COLUMN1, COLUMN2, ... from TABLE1;
```

## Example:
```
select ID, NAME from COUNTRY;
```

Retrieve all columns:

```sql
select * from country;
```

### Predicates:
- Search conditions
- Used in the search condition for the WHERE clause

WHERE Clause comparison objects:

```
=   Equal
>   Greater than
<   Less than
>=  Greater than or equal
<=  Less than or equal
<>  Not equal
```

## Examples:

```sql
select * from COUNTRY where ID <5;
```

```sql
select * from COUNTRY where CCODE = 'CA';
```

# Count Function:

Built-in function that retrieves the number of rows matching the query criteria.

## Examples:

Number of rows in the table:

```sql
select COUNT(*) from tablename;
```
Rows in MEDALS table where the country is Canada

```sql
select COUNT(*) from MEDALS
    where COUNTRY = 'CANADA';
```

# Distinct Function:

Used to Remove duplicate values in a result set.

## Syntax:

Retrieve Unique values in a column:
```sql
select DISTINCT columnname from tablename
```
## Example:

List of unique Countries that received GOLD medals.
```sql
select DISTINCT COUNTRY from MEDALS
    where MEDALTYPE = 'GOLD';
```

# Limit:

Restrict the number of rows retrieved from the database.

## Syntax:

Retrieve first 10 rows in a table:

```sql
select * from tablename LIMIT 10
```
## Example:

Retrieve 5 rows in the MEDALS table for the year 2018
```sql
select * from MEDALS
    where YEAR = 2018 limit 5
```




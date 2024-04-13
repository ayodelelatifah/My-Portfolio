 -- CREATE A TABLE SPECIFYING WHAT THE PRIMARY KEY IS
 
    use employee;
    CREATE TABLE Persons(
    ID INT NOT NULL,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255),
    Age INT,
   CONSTRAINT FullName  PRIMARY KEY (ID, FirstName)
    );
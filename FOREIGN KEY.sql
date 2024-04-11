-- THIS IS FOR FOREIGN KEYS 


    CREATE TABLE Orders(
    ID INT NOT NULL,
    OrderNumber INT NOT NULL,
    PersonId int,
    PRIMARY KEY (ID),
    FOREIGN KEY (PersonId) REFERENCES Persons(ID)
    );
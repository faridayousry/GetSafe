FLUSH PRIVILEGES;
ALTER USER "root"@"localhost" IDENTIFIED BY "password";
Create database my_database;
Use my_database;

Create table msg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    phoneNo VARCHAR(11),
    flagSent INT,
    stamp DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

Insert into msg values
    ("01221485524", 0, CURRENT_TIMESTAMP());
    ;
-- creates table, database . state is a foreigh key referencing id of the states table
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;
CREATE TABLE IF NOT EXISTS hbtn_0d_usa.cities(id INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY, state_id INT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id), name VARCHAR(256) NOT NULL);
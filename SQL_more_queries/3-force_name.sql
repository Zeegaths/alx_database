-- Creates a table, should not fail if already exists, with id and name. Name cann't be null
CREATE TABLE IF NOT EXISTS force_name (id INT, name VARCHAR(256) NOT NULL);
-- This script shows a full description of the table
SET @query = (
  SELECT CONCAT(
    'SHOW CREATE TABLE `', TABLE_NAME, '`;'
  )
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
);

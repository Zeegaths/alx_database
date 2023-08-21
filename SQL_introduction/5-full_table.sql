-- This script shows a full description of the table
SET @query = (
  SELECT GROUP_CONCAT(
    'SHOW CREATE TABLE `', TABLE_NAME, '`'
    SEPARATOR ' UNION ALL '
  )
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table'
);
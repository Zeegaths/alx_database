-- This script shows a full description of the table
-- This script shows a full description of the table
SET @query = (
  SELECT CONCAT(
    TABLE_NAME, ' ',
    CREATE_TABLE
  )
  FROM (
    SELECT
      'CREATE TABLE `' AS CREATE_TABLE,
      TABLE_NAME,
      '`(' AS TABLE_NAME,
      GROUP_CONCAT(
        '`', COLUMN_NAME, '`', ' ', COLUMN_TYPE,
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
        IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''),
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', ''),
        IF(ORDINAL_POSITION < MAX_ORDINAL, ', ', '') ORDER BY ORDINAL_POSITION
      ) AS COLUMN_DEFINITION,
      ') ENGINE=', ENGINE,
      ' DEFAULT CHARSET=', CHARSET,
      ' COLLATE=', COLLATION
    FROM INFORMATION_SCHEMA.TABLES
    JOIN INFORMATION_SCHEMA.COLUMNS
      ON TABLES.TABLE_NAME = COLUMNS.TABLE_NAME
      AND TABLES.TABLE_SCHEMA = COLUMNS.TABLE_SCHEMA
    WHERE TABLES.TABLE_SCHEMA = 'hbtn_0c_0'
      AND TABLES.TABLE_NAME = 'first_table'
  ) AS temp
);

-- Execute the generated query
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

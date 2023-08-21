-- This script shows a full description of the table
SELECT
    GROUP_CONCAT(
        COLUMN_NAME, ' ',
        COLUMN_TYPE,
        IF(IS_NULLABLE = 'NO', ' NOT NULL', ''),
        IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', COLUMN_DEFAULT), ''),
        IF(COLUMN_KEY = 'PRI', ' PRIMARY KEY', ''),
        IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')
        ORDER BY ORDINAL_POSITION
        SEPARATOR ',\n  '
    ) AS 'Create Table'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';

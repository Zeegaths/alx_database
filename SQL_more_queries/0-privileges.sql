-- This query shows privileges granted for the two users
CREATE user_0d_1 'user_0d_1'@'hostname';
CREATE user_0d_1 'user_0d_2'@'hostname';

SHOW GRANTS FOR 'user_0d_1'@'hostname';
SHOW GRANTS FOR 'user_0d_2'@'hostname';

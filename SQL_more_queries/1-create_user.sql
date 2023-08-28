-- These queries create user and grants all priviledges
CREATE USER IF NOT EXISTS user_0d_1 IDENTIFIED BY 'user_0d_1_pwd';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'%';
FLUSH PRIVILEGES;
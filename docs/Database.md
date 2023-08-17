# Database
## MySQL
```sql
CREATE USER 'ruoyi_cloud'@'%' IDENTIFIED BY '123456'; 
CREATE DATABASE ruoyi_cloud DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
GRANT ALL ON ruoyi_cloud.* to 'ruoyi_cloud'@'%';
FLUSH PRIVILEGES;

SHOW GRANTS FOR 'ruoyi_cloud'@'%';
```
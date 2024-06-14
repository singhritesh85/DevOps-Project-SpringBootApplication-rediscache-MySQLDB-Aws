# DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/7e0cf995-997c-40c6-8d9e-8029a1a971c1)
1. Clone source code present in repo https://github.com/singhritesh85/spring-rediscluster-cache-mysql.git as shown in screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/9a62edba-f36a-46d8-bbea-981a5eb8bd20)
2. Now connect to the MySQL database and create database and table as required for the project.
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/466f73b8-d772-4e97-b5b9-0c6647112e7d)
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/d8026e1e-e62e-4e16-b1fc-80004419295b)
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/49b71f65-7a71-4ad8-8aa0-33cb852c4371)
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/ecc1a2cb-b023-4ad6-9bf1-ee31987335a5)
3. Do the entry in the file spring-rediscluster-cache-mysql/src/main/resources/application.properties for spring.datasource.url, spring.datasource.username and spring.datasource.password as shown in the screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/d776b813-b0ce-44dd-9f54-15867a6331fd)
4. Do the entry in the file spring-rediscluster-cache-mysql/src/main/java/com/springredis/cache/SpringRedisCacheApplication.java for Redis hostname, Redis Port and Redis primary key.
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/85710084-ebea-48e1-a56e-6318c0df78e0)
5. Build the Code using Maven as shown in the screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/03832283-2e81-44c8-946e-3767e20ff7c0)
6. Start the Spring Boot Application as shown in screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/eaf1e470-b0f2-40e2-9a1f-a68d71e1e155)
7. Now use POST method for entry into the table items from POSTMAN as shown in screenshot below.
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/32ebc99c-7c56-4830-9942-b2bcfe963886)
8. Checked from database and found entry is present in the database table as shown in the screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/63400a1e-fe4e-4977-8a4c-8db78cfc45ba)
9. Now Access the entry using GET method from POSTMAN and record the time as shown in the screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/d8e5fa43-2f92-41c6-9c34-aba0ab259702)
This is the first time we are accessing the data So Application will connect to database and provide the result and you can see from screenshot above the time taken 611ms.
10. Finally Access the entry second time using GET method from POSTMAN and record the time as shown in the screenshot below
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/bb7e95aa-5e02-417f-82bf-d4b69a515219)
This time when we access the data then SpringBoot Application will connect with Redis cache and provide the data and hence the time taken is relatively less.
<br><br/>
In below screenshot I checked the entry for Redis Cache
![image](https://github.com/singhritesh85/DevOps-Project-SpringBootApplication-rediscache-MySQLDB-Aws/assets/56765895/edb77ea5-1505-4fa4-9b29-a5b5300d2772)
<br><br/>
The motive of this project is to show the advantage of implementing Redis Cache with MySQL database in an Application. Whenever we query any data then Application will connect with the Redis Cache and if it doesn't find the data in cache then it will connect with database and get the data. After geting the data from database it will make an entry in the Redis Cache for the same. So that next time if same data will be queried then Application will conect with Redis Cache and get the data rather than connecting with the database and getting the data and hence the latency for the request has been reduced.

<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
```
Source Code:- https://github.com/singhritesh85/spring-rediscluster-cache-mysql.git
```
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
```
Reference:-  https://github.com/souravkantha/spring-redis-cache.git
```

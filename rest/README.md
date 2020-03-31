# covid-19-poc Rest App

## Api Documentation
A rest application that provides the latest metrics on Corona related matters.



#### Swagger
http://localhost:8080/swagger-ui.html

## Database

The Default configuration is H2. If none of the Database variables are set, it defaults to H2.

### H2
The H2 Console is configured as follows:

|Fields|Configuration|
|-|-|
|**URL**|http://localhost:8080/h2-console/|
|**Driver Class**|org.h2.Driver|
|**JDBC URL**|jdbc:h2:mem:testdb|
|**User Name**|sa|

*There is no password*


### MySQL

|ENV VARS    |Description    |Default Vaue|
|------------|---------------|------------|
|SPRING_DATASOURCE| Set this to 'mysql' to activate the MySQL Database |h2|
|MYSQL_HOST| The MySQL host or IP, note the port defaults to 3306 |localhost|
|MYSQL_DBNAME| The database should already exist, the app does not create it |db_example|
|MYSQL_USER| Any prexisting user will do. It is suggested not to use the root |springuser|
|MYSQL_PASS| The MySQL password that matches the concerned user |password|

> Note that the database user should have the proper permissions. This step can be skipped depending on your setup.
```SQL
CREATE USER 'springuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON db_example.* TO 'springuser'@'localhost';
```

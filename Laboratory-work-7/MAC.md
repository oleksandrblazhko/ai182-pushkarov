## Крок 1
####  Створіть у БД структури даних, необхідні для роботи повноважного керування доступом. 

> DROP TABLE IF EXISTS Access_Levels CASCADE;</br>
CREATE TABLE Access_Levels (</br>
access_level_id INTEGER PRIMARY KEY,</br>
access_level VARCHAR UNIQUE</br>
);</br>
INSERT INTO Access_Levels VALUES (1, 'public');</br>
INSERT INTO Access_Levels VALUES (2, 'private');</br>
INSERT INTO Access_Levels VALUES (3, 'secret');</br>
DROP TABLE IF EXISTS Role_Access_Level CASCADE;</br>
CREATE TABLE Role_Access_Level (</br>
role_name VARCHAR PRIMARY KEY,</br>
access_level INTEGER REFERENCES</br>
Access_Levels (access_level_id)</br>
);</br>
REVOKE ALL</br>
ON Role_Access_Level</br>
FROM GROUP oleksii;</br>
GRANT SELECT</br>
ON Role_Access_Level</br>
TO GROUP oleksii;</br>

## Крок 
####


## Крок 
####


## Крок 
####

## Крок 
####

## Крок 1
####  Створіть у БД структури даних, необхідні для роботи повноважного керування доступом. 
![image](https://user-images.githubusercontent.com/41470575/204120093-8c515640-0e02-47da-aa32-3089b07de74f.png)
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

## Крок 2
#### Визначте для кожного рядка таблиці мітки конфіденційності (для кожного рядка свою мітку). 
![image](https://user-images.githubusercontent.com/41470575/204120196-3716dcfb-1fef-4678-8156-0de53c2cf3dd.png)
> UPDATE PUBLIC.university </br>
SET spot_conf = 3;</br>

## Крок 3
####  Визначте для користувача його рівень доступу 
![image](https://user-images.githubusercontent.com/41470575/204120332-fe17efc8-2a60-49d6-a0c8-da135f5b2a75.png)
> INSERT INTO Role_Access_Level </br>
VALUES ('oleksii', 2); </br>

## Крок 4
#### Створіть нову схему даних. 
![image](https://user-images.githubusercontent.com/41470575/204120251-1f97f2d3-eaf4-4018-9b92-d67f2dd534f3.png)
> DROP SCHEMA IF EXISTS oleksii CASCADE;</br>
CREATE SCHEMA oleksii;</br>

![image](https://user-images.githubusercontent.com/41470575/204120387-3e2af695-07c9-43a5-8c4a-29f184dea51d.png)
> ALTER SCHEMA oleksii OWNER TO oleksii; </br>


## Крок 5
#### Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка забезпечує SELECT-правила повноважного керування доступом для користувача. 
![image](https://user-images.githubusercontent.com/41470575/204120483-314530eb-4897-4520-899b-3e533916b0f2.png)
>DROP VIEW IF EXISTS oleksii.university;</br>
CREATE VIEW oleksii.university AS</br>
SELECT</br>
    u_id,</br>
    name,</br>
    year</br>
FROM PUBLIC.university s, Role_Access_Level l</br>
WHERE</br>
    l.role_name = CURRENT_USER and</br>
	l.access_level >= s.spot_conf;</br>


## Крок 6
#### Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача. 
![image](https://user-images.githubusercontent.com/41470575/204121307-6124233e-1a70-43e8-bb2e-a3ea4fa1d6b4.png)


![image](https://user-images.githubusercontent.com/41470575/204121233-2120e622-1f5d-4fff-960e-771808045bec.png)


![image](https://user-images.githubusercontent.com/41470575/204120586-55fad4a0-e749-4bf9-adb7-c0c67b135b83.png)
> GRANT SELECT </br>
ON oleksii.university </br> 
TO oleksii;</br>

## Крок 7
####

![image](https://user-images.githubusercontent.com/41470575/204121278-ebe8f467-2e9d-4d9c-863e-20496b8f4cee.png)

![image](https://user-images.githubusercontent.com/41470575/204121401-6ee98286-3f38-43bd-9196-cd7dd0c6a079.png)

update level to oleksii user from 2 to 3
![image](https://user-images.githubusercontent.com/41470575/204121435-b767f0b2-13c4-4161-9c3a-9a73c9be4ace.png)

![image](https://user-images.githubusercontent.com/41470575/204121406-e303c376-96b0-44e7-854e-219981fff039.png)

![image](https://user-images.githubusercontent.com/41470575/204121418-fa803c97-0165-47b5-b2ab-50bd8d31d98c.png)



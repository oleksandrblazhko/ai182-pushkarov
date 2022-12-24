## Крок 1
#### Створіть у БД структури даних, необхідні для роботи повноважного керування доступом. 
![image](https://user-images.githubusercontent.com/41470575/204119605-d4df64b5-d3a2-48f2-9e01-ca585df220b4.png)
> DROP TABLE IF EXISTS Access_Levels CASCADE; </br>
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
REVOKE ALL </br>
ON Role_Access_Level </br>
FROM GROUP oleksii;</br>
GRANT SELECT </br>
ON Role_Access_Level </br>
TO GROUP oleksii;</br>


## Крок 2
#### Визначте для кожного рядка таблиці мітки конфіденційності (для кожного рядка свою мітку). 

## Крок 3
#### Визначте для користувача його рівень доступу 

## Крок 4
#### Створіть нову схему даних. 

## Крок 5
#### Створіть віртуальну таблицю, назва якої співпадає з назвою реальної таблиці та яка забезпечує SELECT-правила повноважного керування доступом для користувача. 

## Крок 6
#### Створіть INSERT/UPDATE/DELETE-правила повноважного керування доступом для користувача.  

## Крок 7
#### Перевірте роботу механізму повноважного керування, виконавши операції SELECT, INSERT, UPDATE, DELETE

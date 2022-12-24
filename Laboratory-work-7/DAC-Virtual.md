## Крок 1
#### Заповніть таблицю БД ще трьома рядками. 
![image](https://user-images.githubusercontent.com/41470575/204118007-6694aa48-48eb-4eed-8c9e-4b87661d82ba.png)
> postgres=> Insert into university values  (1, 'ONPU', 1918); </br>
postgres=> Insert into university values  (2, 'Kekl', 2000);</br>
postgres=> Insert into university values  (3, 'Harvard', 980);</br>
postgres=> Insert into university values  (4, 'Danver', 1980);</br>

![image](https://user-images.githubusercontent.com/41470575/204118060-d50310be-cb83-4ddb-af9d-31c657408da1.png)

## Крок 2
#### Створіть схему даних користувача та віртуальну таблицю у цій схемі з правилами вибіркового керування доступом для користувача так, щоб він міг побачити тільки один з рядків таблиці з урахуванням одного значення її останньої колонки.
![image](https://user-images.githubusercontent.com/41470575/204118854-7f85b7b6-ac8c-42db-84a1-d31b815b5c3f.png)
> Insert into university values  (1, 'ONPU', 1918); </br>
Insert into university values  (2, 'Kekl', 2000);</br>
Insert into university values  (3, 'Harvard', 980);</br>
Insert into university values  (4, 'Danver', 1980);</br>


![image](https://user-images.githubusercontent.com/41470575/204118866-5297bb7e-25ba-46e4-a754-451f50e6b023.png)
> GRANT SELECT ON university TO oleksii; </br>
CREATE TABLE ROLE2UNIVERSITY (</br>
ROLE_NAME  VARCHAR(30),</br>
YEAR    INTEGER</br>
);</br>
GRANT SELECT ON ROLE2UNIVERSITY TO oleksii;</br>
INSERT INTO ROLE2UNIVERSITY VALUES ('OLEKSII', 1980);</br>
CREATE SCHEMA OLEKSII;</br>
ALTER SCHEMA OLEKSII OWNER TO oleksii;</br>
CREATE OR REPLACE VIEW OLEKSII.university AS</br>
SELECT S.*</br>
FROM PUBLIC.university S, ROLE2UNIVERSITY RLS</br></br>
WHERE RLS.ROLE_NAME = UPPER(CURRENT_USER)</br>
AND RLS.YEAR = S.year;</br>
GRANT SELECT ON OLEKSII.university TO OLEKSII;</br>
REVOKE SELECT ON PUBLIC.university FROM OLEKSII; </br>

## Крок 3
#### Перевірте роботу механізму вибіркового керування, виконавши операції SELECT, INSERT, UPDATE, DELETE. 

![image](https://user-images.githubusercontent.com/41470575/204118965-0ee7db5c-b6e0-4392-814d-d77e6142d186.png)
> SELECT * FROM university;

![image](https://user-images.githubusercontent.com/41470575/204119007-53022b05-7754-45b6-a625-3e86330a1eff.png)
> Insert into university values  (5, 'Bomber', 42342);

![image](https://user-images.githubusercontent.com/41470575/204119028-96e056c5-7671-448f-a5aa-32536328d5c4.png)
> UPDATE university SET u_id = 0;

![image](https://user-images.githubusercontent.com/41470575/204119048-e952af66-e057-4e38-ace4-e3ea6b9d4448.png)
> DELETE FROM university WHERE u_id = 2;

## Крок 1
#### Встановіть СКБД PostgreSQL
![image](https://user-images.githubusercontent.com/41470575/204101911-9e828580-8d94-4aef-b396-c206d37b8f67.png)

## Крок 2
#### Створіть термінальну консоль psql через утиліту командного рядка вашої ОС та встановіть з’єднання з БД postgres від імені користувача-адміністратора postgres 
![image](https://user-images.githubusercontent.com/41470575/204102404-2b984ea6-d3e2-42d0-a2a9-9dbae9c71f72.png)

## Крок 3
#### Зареєструйте нового користувача в СКБД PostgreSQL, назва якого співпадає з вашим ім'ям, наприклад ivan, і довільним паролем.
![image](https://user-images.githubusercontent.com/41470575/204115200-28688c9b-57dc-49ee-b8f5-ce6e95dffb85.png)
>CREATE USER oleksii WITH PASSWORD 'qwerty';

## Крок 4
#### Створіть роль в СКБД PostgreSQL (назва співпадає з вашим прізвищем латинськими літерами) і надайте новому користувачеві можливість наслідувати цю роль. 
![image](https://user-images.githubusercontent.com/41470575/204115233-66377d89-02b3-4b77-886a-16cb6535d698.png)
> CREATE ROLE pushkarov;</br>
> GRANT pushkarov TO oleksii;

## Крок 5
#### Створіть реляційну таблицю з урахуванням варіанту з таблиці 2.1 від імені користувача-адміністратора. 
![image](https://user-images.githubusercontent.com/41470575/204115387-b3037e11-9754-4b2b-8d9c-90aceee6a9b6.png)
> CREATE TABLE university (</br>
> u_id INTEGER,</br>
> name VARCHAR,</br>
> year INTEGER</br>
> );

## Крок 6
#### Внесіть один рядок в таблицю, використовуючи команду insert into ..., відповідно до варіанту.
![image](https://user-images.githubusercontent.com/41470575/204115592-02d1fc74-4a8a-4c8d-81ce-af966475f1ff.png)
> INSERT INTO university VALUES ( </br>
> 1, </br>
> 'ONPU', </br>
> 1918 </br>
> ); </br>
> TABLE university; </br>

## Крок 7
#### Додатково створіть ще одну термінальну консоль psql та та встановіть з’єднання з БД postgres від імені нового користувача. 
![image](https://user-images.githubusercontent.com/41470575/204115826-b8063706-15e1-4d8d-8cf9-58c74a2c91c5.png)
> psql -U oleksii -d postgres

## Крок 8
#### Від імені вашого користувача виконайте запит на отримання даних з таблиці (select * from таблиця). Запротоколюйте результат виконання команди. 
![image](https://user-images.githubusercontent.com/41470575/204115856-181807c1-1350-4bf6-95fe-dfb995d90cd3.png)
> SELECT * FROM university;

## Крок 9
#### Встановіть повноваження на читання таблиці новому користувачеві. 
![image](https://user-images.githubusercontent.com/41470575/204115994-674dd0c7-bdcf-4336-b6df-0147a1381292.png)
> GRANT SELECT ON university TO oleksii;

## Крок 10
#### Повторіть крок 8. 
![image](https://user-images.githubusercontent.com/41470575/204116007-2f87c03c-adf7-4906-95df-e562501622f0.png)
> SELECT * FROM university;

## Крок 11
#### Зніміть повноваження на читання таблиці для нового користувача. 
![image](https://user-images.githubusercontent.com/41470575/204116047-f70b5cf7-4a33-4e49-a302-17eb90760140.png)
> REVOKE SELECT ON university FROM oleksii;

## Крок 12
#### Повторіть крок 8.
![image](https://user-images.githubusercontent.com/41470575/204116054-0de98c78-fd67-4368-836a-a3b8c0bf0b13.png)
> SELECT * FROM university;

## Крок 13
#### Створіть команду оновлення даних таблиці (UPDATE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди. 
![image](https://user-images.githubusercontent.com/41470575/204116758-35eb9d2c-b5aa-4bf4-b90d-8a52c056fe3c.png)
> UPDATE university SET u_id = 2;

## Крок 14
#### Встановіть повноваження на оновлення таблиці новому користувачеві. 
![image](https://user-images.githubusercontent.com/41470575/204116782-2353244a-6366-4dc9-ac65-b12e3c28aaf3.png)
> GRANT UPDATE ON university TO oleksii;

## Крок 15
#### Повторіть крок 13. 
![image](https://user-images.githubusercontent.com/41470575/204116788-7ab02e4d-876c-4318-9b7f-1800fa1b9e0e.png)
> SELECT * FROM university;

## Крок 16
#### Створіть команду видалення запису таблиці (DELETE) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди. 

## Крок 17
#### Встановіть повноваження на видалення таблиці новому користувачеві. 

## Крок 18
#### Повторіть крок 16. 

## Крок 19
#### Зніміть всі повноваження  з таблиці для нового користувача.

## Крок 20
#### Створіть команду внесення запису в таблицю (INSERT) і виконайте її від імені нового користувача. Проаналізуйте результат виконання команди. 

## Крок 21
#### Встановіть повноваження на внесення даних до таблиці для ролі. 

## Крок 22
#### Повторіть крок 20. 


### Заповнення матриці реалізації загроз

| Вимоги<br>(FR, NFR)      | Загроза<br>порушення<br>конфіденційності | Загроза<br>порушення<br>цілісності | Загроза<br>порушення<br>доступності |
|-------------|:------------------------:|:------------------------:|:------------------------:|
| Апаратне забезпечення (АЗ):<br>- робочі мобільні пристрої споживачів |      -      |  Відмова АЗ мобільних пристроїв  |  Недоступність інтернет мережи<br>невистачає пам'яті для опрацювання занадто великих текстових файлів  |
| Програмне забезпечення (ПЗ):<br>- системне ПЗ (ОС, системні дозволи)<br>- прикладне ПЗ |  Читання конфеденційних файлів, та їх подальше надсилання<br> до 3rd-party сервісів перекладу  |      -      |   Несправність ОС  |
| Дані:<br>- системні (конфігураційні файли ОС та прикладного ПЗ)<br>- прикладні дані (файли та база даних), які є результатом роботи прикладного ПЗ |     Завантаження несертифікованого APK      |      -      |    Ненадання системних дозвілів для коректної праці ПЗ     |
| Персонал:<br>- обслуговуючий персонал для супровіду системи<br>- користувачі прикладного ПЗ |      - <br> Надсилання конфеденційних файлів на переклад до сторонньго сервісу     | Внесення некоректних змін до релізної версії ПЗ<br>-   |      Несхвалення змін зі сторони GooglePlay для поширення ПЗ<br>-     |

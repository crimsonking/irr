# language:ru
Функционал: Авто и мото -> Автосервис и услуги -> Кредиты и ссуды

  Сценарий: Все результаты
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по цене
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

  Сценарий: Фильтр по наличию фото
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

  Сценарий: Фильтр по наличию видео
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автосервис и услуги -> Кредиты и ссуды" 
       И я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

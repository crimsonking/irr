# language:ru
Функционал: Авто и мото -> Выкуп автомобилей. Спрос

  Сценарий: Фильтр по цене
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Выкуп автомобилей. Спрос" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    |
        | Цена           | 100  | 100000 |
       И на странице поиска загружен список результатов

      То в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по типу автомобиля
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Выкуп автомобилей. Спрос" 
       И я делаю поиск по следующим параметрам:
      | parameter      | value                  |
      | Тип автомобиля | микроавтобус, легковой |
      И на странице поиска загружен список результатов

      То в деталях каждого объявления "Тип автомобиля" равно одному из "микроавтобус, легковой"
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по состоянию автомобиля
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Выкуп автомобилей. Спрос" 
       И я делаю поиск по следующим параметрам:
      | parameter | value        |
      | Состояние | целая, битая |
      И на странице поиска загружен список результатов

      То в деталях каждого объявления "Состояние" равно одному из "целая, битая"
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

@wip
  Сценарий: Фильтр по стране происхождения автомобиля
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Выкуп автомобилей. Спрос" 
       И я делаю поиск по следующим параметрам:
      | parameter  | value             |
      | Автомобили | русские, иномарка |
      И на странице поиска загружен список результатов

      То в деталях каждого объявления "Автомобили" равно одному из "русские, иномарка"
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков       

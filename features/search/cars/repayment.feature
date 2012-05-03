# language:ru
Функционал: Авто и мото -> Выкуп автомобилей. Спрос

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Авто и мото -> Выкуп автомобилей. Спрос"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по цене
   Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@empty_results
  Сценарий: Фильтр по типу автомобиля
   Когда я делаю поиск по следующим параметрам:
      | parameter      | value                  |
      | Тип автомобиля | микроавтобус, легковой |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип автомобиля" равно одному из "микроавтобус, легковой"

  Сценарий: Фильтр по состоянию автомобиля
   Когда я делаю поиск по следующим параметрам:
      | parameter | value        |
      | Состояние | целая, битая |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Состояние" равно одному из "целая, битая"

  Сценарий: Фильтр по стране происхождения автомобиля
   Когда я делаю поиск по следующим параметрам:
      | parameter  | value             |
      | Автомобили | русские, иномарка |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Автомобили" равно одному из "русские, иномарка"

@empty_results
  Сценарий: Фильтр по наличию фото
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
   Когда я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Поданные  | вчера и сегодня |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 2 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "выкуп"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "выкуп"

@wip
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "выкуп"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в каждом объявления содержится "выкуп"
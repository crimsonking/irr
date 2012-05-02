# language:ru
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Диски

  Сценарий: Все результаты
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски" 
       И я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 120 знаков

  Сценарий: Фильтр по типу предложения
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter       | value   |
      | Тип предложения | куплю  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип предложения" равно "куплю"

  Сценарий: Фильтр по состоянию
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новые |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Состояние" равно "новые"

  Сценарий: Фильтр по цене
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски" 
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
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски" 
       И я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

  Сценарий: Фильтр по типу дисков
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Тип дисков | литые |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип дисков" равно "литые"

@failing
  Сценарий: Фильтр по производителю
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter     | value |
      | Производитель | Mak   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Производитель" равно "Mak"

  Сценарий: Фильтр по диаметру обода
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter     | value |
      | Диаметр обода | 17    |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Диаметр обода" равно "17"

  Сценарий: Фильтр по ширине обода
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Ширина обода | 5     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Ширина обода" равно "5"

@failing
  Сценарий: Фильтр по числу болтов
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Число болтов | 4     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Число болтов" равно "4"

@failing
  Сценарий: Фильтр по PCD
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | PCD       | 100   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "PCD" равно "100"

@failing
  Сценарий: Фильтр по ET
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | ET        | 5   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "ET" равно "5"

  Сценарий: Фильтр по наличию фото
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
   Когда открыта страница для города "Москва"
       И на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
       И я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Поданные  | вчера и сегодня |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 2 дней назад

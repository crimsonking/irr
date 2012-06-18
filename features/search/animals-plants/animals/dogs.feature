# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Собаки

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по типу предложения
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min   | max     | value |
        | Цена           | 10000 | 1000000 |       |
        | Валюта         |       |         | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 10000
       И в каждом объявлении цена <= 1000000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min | max    | value |
      | Цена           | 10  | 100000 |       |
      | Валюта         |     |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 10
       И в каждом объявлении цена <= 100000

@customfield
  Сценарий: Фильтр по породе
   Когда я делаю поиск по следующим параметрам:
      | parameter | value                     |
      | Порода    | Английский кокер-спаниель |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Порода" равно "Английский кокер-спаниель"

@customfield
  Сценарий: Фильтр по возрасту
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max | value |
      | Возраст   | 1   | 10  |       |
      | Лет/мес.  |     |     | мес.  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Возраст" >= "1"
       И в деталях первого объявления "Возраст" <= "10"
       И в деталях первого объявления "Лет/мес." равно "мес."

@customfield
  Сценарий: Фильтр по полу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Пол       | мальчик |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Пол" равно "мальчик"

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
       И в деталях первого объявления отображается видео

@empty_results
  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

@empty_results
  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "щенков"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "щенков"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "спаниэля"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "спаниэля"
# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Коммерческая. Аренда -> Производство и склады

  Контекст:
    Когда открыта страница для города "Астана"
        И на главной странице я перехожу в категорию "Недвижимость -> Коммерческая. Аренда -> Производство и склады"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       

  Сценарий: Фильтр по округам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Округ     | Западный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "АО" равно "Западный"

  Сценарий: Фильтр по районам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Район     | Даниловский |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Район города" равно "Даниловский"

  Сценарий: Фильтр по линии метро
    Когда я делаю поиск по следующим параметрам:
      | parameter   | value       |
      | Линия метро | Калининская |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Линия метро" равно "Калининская"

  Сценарий: Фильтр по станции метро
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value          |
      | Станция метро | Новогиреево м. |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Станция метро" равно "Новогиреево"

  Сценарий: Фильтр по времени до метро
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | До метро  | 5     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "До метро" <= "5"

@customfield
  Сценарий: Фильтр по назначению помещения
    Когда я делаю поиск по следующим параметрам:
      | parameter            | value        |
      | Назначение помещения | производство |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Назначение помещения" равно "производство"

@customfield
  Сценарий: Фильтр по высоте потолков
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Высота потолков | 3     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Высота потолков" >= "3"

@customfield
  Сценарий: Фильтр по общей площади
    Когда я делаю поиск по следующим параметрам:
        | parameter     | min | max |
        | Общая площадь | 10  | 300 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Общая площадь" >= "10"
       И в деталях первого объявления "Общая площадь" <= "300"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | тенге  |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@customfield
  Сценарий: Фильтр по отоплению
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Отапливаемое | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Отапливаемое"

@customfield
  Сценарий: Фильтр по ж/д путям
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Ж/д пути  | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Ж/д пути"

@customfield
  Сценарий: Фильтр по охране
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Охрана    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Охрана"

@customfield
  Сценарий: Фильтр по подключенной мощности
    Когда я делаю поиск по следующим параметрам:
      | parameter             | min | max   |
      | Подключенная мощность | 10  | 50000 |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Подключенная мощность" >= "10"
       И в деталях первого объявления "Подключенная мощность" <= "50000"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов для недвижимости

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "этаж"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "этаж"

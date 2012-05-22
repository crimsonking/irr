# language:ru
# encoding: utf-8
@wip
Функционал: Электроника и техника -> Техника для авто -> Автомагнитолы

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Автомагнитолы"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
       | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок

  Сценарий: Фильтр по типу предложения
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по состоянию
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Состояние" равно "новый"

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

  Сценарий: Фильтр по марке
    Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Марка     | Pioneer |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Pioneer"

  Сценарий: Фильтр по типу
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value |
      | Тип магнитолы | mp3   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип магнитолы" равно "mp3"

  Сценарий: Фильтр по типоразмеру
    Когда я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Типоразмер | 1 din |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Типоразмер" равно "1 din"

  Сценарий: Фильтр по выходной мощности
    Когда я делаю поиск по следующим параметрам:
      | parameter         | min | max |
      | Выходная мощность | 1   | 200 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Выходная мощность" >= "1"
       И в деталях первого объявления "Выходная мощность" <= "200"

  Сценарий: Фильтр по числу линейных аудиовыходов 
    Когда я делаю поиск по следующим параметрам:
      | parameter                   | min | max |
      | Число линейных аудиовыходов | 1   | 5   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Число линейных аудиовыходов" >= "1"
       И в деталях первого объявления "Число линейных аудиовыходов" <= "5"

  Сценарий: Фильтр по типу дисплея
    Когда я делаю поиск по следующим параметрам:
      | parameter   | value       |
      | Тип дисплея | двухцветный |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип дисплея" равно "двухцветный"

  Сценарий: Фильтр по выходу для сабвуфера
    Когда я делаю поиск по следующим параметрам:
      | parameter           | value |
      | Выход для сабвуфера | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Выход для сабвуфера"

  Сценарий: Фильтр по пульту ДУ
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Пульт ДУ  | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Пульт ДУ"

  Сценарий: Фильтр по съемной панели
    Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Съемная панель | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Съемная панель"

  Сценарий: Фильтр по cенсорному дисплей
    Когда я делаю поиск по следующим параметрам:
      | parameter         | value |
      | Сенсорный дисплей | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Сенсорный дисплей"
       
  Сценарий: Фильтр по встроенному GPS-приемнику
    Когда я делаю поиск по следующим параметрам:
      | parameter               | value |
      | Встроенный GPS-приемник | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Встроенный GPS-приемник"
       
  Сценарий: Фильтр по поддержке iPod
    Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Поддержка iPod | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Поддержка iPod"       
       
  Сценарий: Фильтр по поддержке MPEG4
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Поддержка MPEG4 | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Поддержка MPEG4"             
       
  Сценарий: Фильтр по входу аудио на передней панели
    Когда я делаю поиск по следующим параметрам:
      | parameter                     | value |
      | Вход аудио на передней панели | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Вход аудио на передней панели"          
       
  Сценарий: Фильтр по Bluetooth
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Bluetooth | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Bluetooth"        
       
  Сценарий: Фильтр по поддержке карт памяти
    Когда я делаю поиск по следующим параметрам:
      | parameter             | value              |
      | Поддержка карт памяти | Compact Flash Card |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Поддержка карт памяти" равно "Compact Flash Card"       

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "сабвуфер"

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "сабвуфер"

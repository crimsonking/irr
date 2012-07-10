# language:ru
# encoding: utf-8
Функционал: Подача объявления с фото - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 5                                            |
          | Общая площадь:     | 500                                          |
          | Этаж:              | 5                                            |
          | Цена:              | 500000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест подачи объявления с фото                |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То объявление с названием "5-комн. кв.,  5,  площадь:  общая 500 кв. м." присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "500000" в долларах
       * у объявления отображается загруженная фотография

@after_index
  Сценарий: Проверка индексации объявления
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | сегодня        |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "5 комн, 500 м2, этаж 5"
       * у объявления "5 комн, 500 м2, этаж 5" отображается загруженная фотография

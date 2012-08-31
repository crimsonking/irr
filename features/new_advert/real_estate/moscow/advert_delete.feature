# language:ru
# encoding: utf-8
Функционал: Удаление объявления - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Удаление объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Регион                     | Москва               |
          | Населённый пункт           | Москва               |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 9                    |
          | Общая площадь:             | 900                  |
          | Этаж:                      | 9                    |
          | Этажей в здании:           | 9                    |
          | Цена                       | 900000               |
          | Валюта                     | $                    |
          | Текст                      | Тест удаления объявления |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "8-комн.  квартира,   Интернациональная ул,   10,  8/8,  площадь:  общая 800 кв. м.,  приватизированная" присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1

   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "9-комн.  квартира,   Интернациональная ул,   10,  9/9,  площадь:  общая 900 кв. м.,  приватизированная" присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * я запоминаю количество неактивных объявлений ИП
        * я удаляю данное объявление
       То в ЛК ИП объявление с названием "9-комн.  квартира,   Интернациональная ул,   10,  9/9,  площадь:  общая 900 кв. м.,  приватизированная" отсутствует в списке
        * я жду 10 секунд и перезагружаю страницу
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" уменьшился на 1
        * счетчик объявлений пользователя уменьшился на 1
        * счетчик объявлений во всех разделах уменьшился на 1
        * счетчик количества размещенных объявлений в ЛК ИП уменьшился на 1
        * счетчик количества неактивных объявлений в ЛК ИП не изменился

@after_index
  Сценарий: Проверка индексации
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я делаю поиск по следующим параметрам:
            | parameter | value           |
            | Район     | Поселок Внуково |
            | Поданные  | вчера и сегодня         |
        * на странице поиска загружен список результатов для недвижимости
        * в списке объявлений отсутствует объявление "9 комн, 900 м2, этаж 9/9"

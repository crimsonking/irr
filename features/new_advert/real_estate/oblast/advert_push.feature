# language:ru
# encoding: utf-8
Функционал: Поднятие объявления - Недвижимость -> Аренда (Область)

  Контекст:
    Когда открыта страница для города "Пушкино"

@advert_submit
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                    |
          | Регион             | Московская обл           |
          | Населённый пункт   | Пушкино                  |
          | Улица              | Строительная             |
          | Шоссе:             | Ярославское              |
          | Удалённость:       | 5                        |
          | Комнат в квартире: | 7                        |
          | Общая площадь:     | 700                      |
          | Этаж:              | 7                        |
          | Цена               | 700                      |
          | Валюта             | $                        |
          | Текст              | Тест поднятия объявления |
       * я перехожу на шаг 3
        * на шаге 3 нет ошибок
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "7-комн.  квартира,  Строительная ул, 7, площадь:  общая 700 кв. м." присутствует в списке
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Новостройки" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
       * в ЛК ИП объявление с названием "7-комн.  квартира,  Строительная ул, 7, площадь:  общая 700 кв. м." присутствует в списке
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "7-комн.  квартира,  Строительная ул, 7, площадь:  общая 700 кв. м." присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. Продажа -> Новостройки"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * в ЛК ИП я запоминаю значение поля "Поднятие"
        * в ЛК ИП я запоминаю время создания объявления
        * я поднимаю данное объявление
       То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу
        * в ЛК ИП время создания объявления обновлено
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Новостройки" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений ИП во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value           |
          | Поданные      | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "7 комн, 700 м2, этаж 7"
       * первым в списке обычных объявлений первым идёт объявление "7 комн, 700 м2, этаж 7"

# language:ru
# encoding: utf-8
Функционал: Поднятие объявления - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 7                                            |
          | Общая площадь:     | 700                                          |
          | Этаж:              | 7                                            |
          | Цена:              | 700000                                       |
          | Валюта             | $                                            |
          | Текст              | Тест поднятия объявления                     |
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
        * объявление с названием "7-комн. кв.,  7,  площадь:  общая 700 кв. м." присутствует в списке
        * в ЛК ИП я запоминаю значение поля "Поднятие"
        * я поднимаю данное объявление
       То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу

@after_index
  Сценарий: Проверка создания объявления - поиск по району
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "7-комн. кв.,  Осинский р-н,  Усть-Алтан с,  7,  площадь:  общая 700 кв. м."
       * первым в списке обычных объявлений первым идёт объявление "7-комн. кв.,  Осинский р-н,  Усть-Алтан с,  7,  площадь:  общая 700 кв. м."
# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Марка            | Audi           |
          | Модель           | A4             |
          | Цена:            | 10000          |
          | Валюта           | $              |
          | Год выпуска      | 2001           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест редактирования объявления|
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
       * объявление с названием "Audi A4,  кабриолет,  2001 г. в.,  автоматическая" присутствует в списке
       * я редактирую данное объявление
       * я ввожу следующие данные на шаге 2:
          | parameter       | value    |
          | Марка           | BMW      |
          | Модель          | 116      |
          | Год выпуска     | 2002     |
          | Цена:           | 10000    |
          | Валюта          | €        |
          | Тип кузова      | лимузин  |
          | Тип трансмиссии | вариатор |
          | Текст           | Тест редактирования объявления - новый текст |
       * я сохраняю редактируемое объявление
      То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Легковые автомобили | ВСЕ РЕГИОНЫ"
       То объявление с названием "BMW 116,  лимузин,  2002 г. в.,  вариатор" присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "10000" в евро

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Марка" равно "BMW"
        * на вкладке "Все" "Модель" равно "116"
        * на вкладке "Все" "Год выпуска" равно "2002"
        * на вкладке "Все" "Тип кузова" равно "лимузин"
        * на вкладке "Все" "Тип трансмиссии" равно "вариатор"

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | BMW     |
          | Модель    | 116     |
          | Поданные  | сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "BMW 116,  лимузин,  2002 г. в.,  вариатор"
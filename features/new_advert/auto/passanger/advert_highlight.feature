# language:ru
# encoding: utf-8
Функционал: Выделение объявления - Авто и мото -> Легковые автомобили -> Автомобили с пробегом

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 4"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Регион           | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт | Усть-Алтан     |
          | Марка            | Audi           |
          | Модель           | A3             |
          | Цена             | 30000          |
          | Валюта           | $              |
          | Год выпуска      | 2003           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест выделения объявления |
       * я перехожу на шаг 3
        * на шаге 3 нет ошибок
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Audi A3, кабриолет, 2003 г. в., автоматическая" присутствует в списке
       * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений ИП во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер 4"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Audi A3, кабриолет, 2003 г. в., автоматическая" присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * в ЛК ИП я запоминаю значение поля "Выделение"
        * я выделяю данное объявление
       То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
        * в ЛК данное объявление выделено
        * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений ИП во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | Audi            |
          | Модель    | A3              |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Audi A3, кабриолет, 2003 г. в., автоматическая"

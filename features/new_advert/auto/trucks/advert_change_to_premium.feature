# language:ru
# encoding: utf-8
Функционал: Смена статуса объявления на премиум - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Авто и Мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                |
          | Регион                   | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт         | Усть-Алтан           |
          | Марка                    | DAF                  |
          | Модель                   | FA1900               |
          | Заголовок                | Продаю DAF           |
          | Цена                     | 40000                |
          | Валюта                   | $                    |
          | Пробег                   | 40000                |
          | Мощность двигателя, л.с. | 400                  |
          | Новый или подержанный    | новый                |
          | Год выпуска              | 2004                 |
          | Тип топлива              | дизель               |
          | Грузоподъемность         | 40                   |
          | Текст                    | Продаю дизель FA1900 |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1

   Когда я открываю детали этого объявления
       * счетчик количества активных объявлений продавца увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
        * в ЛК ИП объявление с названием "Продаю DAF" присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * в ЛК ИП я запоминаю значение поля "Премиум"
        * я делаю данное объявление премиумом
       То в ЛК ИП значение поля "Премиум" уменьшилось на единицу
        * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | DAF             |
          | Модель    | FA1900          |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "Продаю DAF"

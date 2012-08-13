# language:ru
# encoding: utf-8
Функционал: Подача объявления с видео - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления с видео
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value                          |
          | Марка                    | DAF                            |
          | Модель                   | FA50                           |
          | Заголовок:               | Продаю с видео |
          | Цена:                    | 60000                          |
          | Валюта                   | $                              |
          | Пробег:                  | 60000                          |
          | Мощность двигателя, л.с.:| 600                            |
          | Новый или подержанный    | новый                          |
          | Год выпуска              | 2006                           |
          | Тип топлива              | дизель                         |
          | Грузоподъемность:        | 60                             |
          | Текст                    | Продаю с видео |
     * я загружаю видео на шаге 2
     * я перехожу на шаг 3
    То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто > Коммерческий транспорт | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Продаю с видео" присутствует в списке
        * у объявления указана цена "60000" в долларах
    Когда я открываю детали этого объявления
       То в деталях объявления отображается загруженное видео

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value   |
          | Марка     | DAF     |
          | Модель    | FA50    |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Продаю с видео"

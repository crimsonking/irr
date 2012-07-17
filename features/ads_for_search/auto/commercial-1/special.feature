# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Спецтехника

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Спецтехника"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Bobcat                    |
          | Модель             | 430                       |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Год выпуска        | 2000                      |
          | Новый или подержанный | новый                  |
          | Тип техники        | вездеход                  |
          | Тип предложения    | продам                    |
          | Текст              | Продаю вездеход           |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Ford                      |
          | Модель             | 1830                      |
          | Цена:              | 200                       |
          | Валюта             | $                         |
          | Год выпуска        | 2000                      |
          | Новый или подержанный | новый                  |
          | Тип техники        | вездеход                  |
          | Тип предложения    | продам                    |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

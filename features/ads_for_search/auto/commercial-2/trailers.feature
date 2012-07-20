# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Грузовые прицепы

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Грузовые прицепы"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                    |
          | Марка              | Schmitz                  |
          | Модель             | SKO                      |
          | Заголовок          | Тест подачи объявления 1 |
          | Цена:              | 15000                    |
          | Валюта             | руб.                     |
          | Новый или подержанный | новый                 |
          | Год выпуска        | 2000                     |
          | Число осей         | 3                        |
          | Тип прицепа        | Фургон                   |
          | Текст              | Продаю фургон            |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Марка              | Grunwald                  |
          | Модель             | Grunwald                  |
          | Заголовок          | Тест подачи объявления 2 (полуприцеп) |
          | Цена:              | 200                       |
          | Валюта             | $                         |
          | Новый или подержанный | новый                  |
          | Год выпуска        | 2000                      |
          | Число осей         | 3                         |
          | Тип прицепа        | Фургон                    |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

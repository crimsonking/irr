# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Собаки

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Заголовок          | Продаю спаниеля           |
          | Цена              | 15000                     |
          | Валюта             | руб.                      |
          | Порода             | Английский кокер-спаниель |
          | Пол                | мальчик                   |
          | Возраст            | 2 ~ мес.                  |
          | Текст              | Продаю спаниеля           |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
        * на шаге 3 нет ошибок
      То в ЛК ИП открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Тип предложения    | продам                    |
          | Заголовок          | Продаю щенков             |
          | Цена              | 100                       |
          | Валюта             | $                         |
          | Порода             | Английский кокер-спаниель |
          | Пол                | девочка                   |
          | Возраст            | 2 ~ года/лет              |
          | Текст              | Продаю                    |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
        * на шаге 3 нет ошибок
      То в ЛК ИП открыт список объявлений пользователя


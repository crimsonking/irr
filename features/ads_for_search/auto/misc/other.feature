# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Мототехника и автодома -> Другое

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        * я подаю объявление в категорию "Авто и мото -> Мототехника и автодома -> Другое"

  Сценарий: Объявление 1
   Когда я ввожу следующие данные на шаге 2:
          | parameter       | value        |
          | Заголовок       | Продаю катер |
          | Цена            | 15000        |
          | Валюта          | руб.         |
          | Тип предложения | продам       |
          | Текст           | Продаю катер |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       * в ЛК ИП объявление с названием "Продаю катер" присутствует в списке
       * я делаю данное объявление премиумом на 14 дней

  Сценарий: Объявление 2
   Когда я ввожу следующие данные на шаге 2:
          | parameter       | value            |
          | Заголовок       | Продаю 2 (катер) |
          | Цена            | 200              |
          | Валюта          | $                |
          | Тип предложения | продам           |
          | Текст           | Продаю           |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Средства для ухода

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления
        

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Средства для ухода -> Средства для ухода"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Тест подачи объявления 1  |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Тип предложения    | продам                    |
          | Текст              | Продаю                    |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Авто и мото -> Автозапчасти и принадлежности -> Аксессуары -> Щетки и скребки"
       * я ввожу следующие данные на шаге 2:
          | parameter          | value                     |
          | Заголовок          | Тест подачи объявления 2  |
          | Цена:              | 15000                     |
          | Валюта             | руб.                      |
          | Тип предложения    | продам                    |
          | Текст              | Продаю масло              |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То открыт список объявлений пользователя
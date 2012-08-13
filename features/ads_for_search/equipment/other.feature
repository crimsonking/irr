# language:ru
# encoding: utf-8
Функционал: Оборудование -> Другое

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу к подаче объявления

  Сценарий: Объявление 1
   Когда я подаю объявление в категорию "Оборудование -> Другое"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                      |
          | Цена:             | 15000                      |
          | Валюта            | руб.                       |
          | Текст             | Продаю всякое оборудование |
          | Тип предложения   | продам                     |
          | Заголовок         | Продаю другое оборудование |
          | Состояние         | новый                      |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю другое оборудование" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "15000" в рублях

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение |
          | Тип предложения | продам   |
          | Состояние       | новый    |

  Сценарий: Объявление 2
   Когда я подаю объявление в категорию "Оборудование -> Другое"
       * я ввожу следующие данные на шаге 2:
          | parameter         | value                   |
          | Цена:             | 1000                    |
          | Валюта            | $                       |
          | Текст             | Продаю еще оборудование |
          | Тип предложения   | продам                  |
          | Заголовок         | Продаю еще оборудование |
          | Состояние         | б/у                     |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
       * в ЛК ИП объявление с названием "Продаю еще оборудование" присутствует в списке
       * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
       * у объявления указан город "Усть-Алтан"
       * у объявления указана цена "1000" в долларах

    Когда я открываю детали этого объявления
       То на вкладке "Все" указаны следующие параметры:
          | поле            | значение |
          | Тип предложения | продам   |
          | Состояние       | б/у      |

# language:ru
# encoding: utf-8
Функционал: Модерация сообщений через БО

  Контекст:
      Когда у интернет-партнера нет объявлений

  Сценарий: Принятие объявления
    # Подача объявления
    Когда открыта страница для региона "Астана"
        * я вхожу под пользователем с ролью "Интернет-партнер"
        * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
          | parameter          | value                                        |
          | Тип предложения    | даром                                        |
          | Заголовок          | Тест модерации - принять                     |
        * я перехожу на шаг 3
        * в ЛК ИП открыт список объявлений пользователя
       То в ЛК ИП объявление с названием "Тест модерации - принять" присутствует в списке
        * статус созданного объявления равен "неактивно"
        * дополнительный статус созданного объявления равен "не проверено модератором"

    Когда я перехожу на БО
        * на БО я перехожу в категорию "Объявления -> Найти объявления"
        * я делаю поиск по созданному объявлению
        * модератор принимает объявление

       #То интернет-партнер получает письмо о том, что объявление было принято
    Когда открыта страница для региона "Казахстан"
        * я вхожу под пользователем с ролью "Интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Тест модерации - принять" присутствует в списке
        * статус созданного объявления равен "размещено"

  Сценарий: Отклонение объявления
    # Подача объявления
    Когда открыта страница для региона "Астана"
        * я вхожу под пользователем с ролью "Интернет-партнер"
        * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
          | parameter          | value                                        |
          | Тип предложения    | даром                                        |
          | Заголовок          | Тест модерации - отклонить                   |
        * я перехожу на шаг 3
       То в ЛК ИП объявление с названием "Тест модерации - отклонить" присутствует в списке

    Когда я перехожу на БО
        * на БО я перехожу в категорию "Объявления -> Найти объявления"
        * я делаю поиск по созданному объявлению
        * модератор отклоняет объявление с причиной "Другое" и текстом
        """
          <br><b>Проверка жирного текста</b><br>Проверка обычного текст<br>
        """

      # То интернет-партнер получает письмо о том, что объявление было отклонено
      #  * в письме об отклонении модерации указано жирным текстом "Проверка жирного текста"
      #  * в письме об отклонении модерации указано жирным текстом "Проверка обычного текста"
    Когда открыта страница для региона "Казахстан"
        * я вхожу под пользователем с ролью "Интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Тест модерации - отклонить" присутствует в списке
        * статус созданного объявления равен "неактивно"
        * дополнительный статус созданного объявления равен "отклонено модератором"

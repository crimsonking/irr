# language:ru
# encoding: utf-8
Функционал: Телефоны и связь -> Мобильная связь -> Контракты - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Телефоны и связь -> Мобильная связь -> Контракты
      Когда на главной странице я перехожу в категорию "Телефоны и связь -> Мобильная связь -> Контракты"
        * на странице категории присутствует секция "Операторы связи"
        * я заполняю ссылки в секции "Операторы связи" с параметрами:
        | название | значение                                         |
        | feature  | Телефоны и связь -> Мобильная связь -> Контракты |
        | category | Телефоны и связь -> Мобильная связь -> Контракты |
        | section  | Операторы связи                                  |
        | field    | Оператор связи                                   |

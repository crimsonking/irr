# language:ru
# encoding: utf-8
Функционал: Телефоны и связь -> Мобильная связь -> Мобильные телефоны - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Телефоны и связь -> Мобильная связь -> Мобильные телефоны
      Когда на главной странице я перехожу в категорию "Телефоны и связь -> Мобильная связь -> Мобильные телефоны"
        * на странице категории присутствует секция "Производители мобильных телефонов"
        * я заполняю ссылки в секции "Производители мобильных телефонов" с параметрами:
        | название | значение                                |
        | feature  | Телефоны и связь -> Мобильная связь -> Мобильные телефоны |
        | category | Телефоны и связь -> Мобильная связь -> Мобильные телефоны |
        | section  | Производители мобильных телефонов                           |
        | field    | Марка                                   |

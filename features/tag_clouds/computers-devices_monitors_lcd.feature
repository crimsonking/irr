# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Мониторы -> LCD (ЖК) - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Компьютерная техника -> Мониторы -> LCD (ЖК)
      Когда на главной странице я перехожу в категорию "Компьютерная техника -> Мониторы -> LCD (ЖК)"
        * на странице категории присутствует секция "ЖК мониторы"
        * я заполняю ссылки в секции "ЖК мониторы" с параметрами:
        | название | значение                                     |
        | feature  | Компьютерная техника -> Мониторы -> LCD (ЖК) |
        | category | Компьютерная техника -> Мониторы -> LCD (ЖК) |
        | section  | ЖК мониторы                                  |
        | field    | Марка                                        |
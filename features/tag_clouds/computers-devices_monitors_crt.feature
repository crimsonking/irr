# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Мониторы -> ЭЛТ - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Компьютерная техника -> Мониторы -> ЭЛТ
      Когда на главной странице я перехожу в категорию "Компьютерная техника -> Мониторы -> ЭЛТ"
        * на странице категории присутствует секция "ЭЛТ мониторы"
        * я заполняю ссылки в секции "ЭЛТ мониторы" с параметрами:
        | название | значение                                |
        | feature  | Компьютерная техника -> Мониторы -> ЭЛТ |
        | category | Компьютерная техника -> Мониторы -> ЭЛТ |
        | section  | ЭЛТ мониторы                            |
        | field    | Марка                                   |

# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Комплектующие -> Процессоры - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Компьютерная техника -> Комплектующие -> Процессоры
      Когда на главной странице я перехожу в категорию "Компьютерная техника -> Комплектующие -> Процессоры"
        * на странице категории присутствует секция "Производители"
        * я заполняю ссылки в секции "Производители" с параметрами:
        | название | значение                                            |
        | feature  | Компьютерная техника -> Комплектующие -> Процессоры |
        | category | Компьютерная техника -> Комплектующие -> Процессоры |
        | section  | Производители                                       |
        | field    | Производитель                                       |

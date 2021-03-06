# language:ru
# encoding: utf-8
Функционал: Компьютерная техника -> Комплектующие -> Звуковые карты - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Компьютерная техника -> Комплектующие -> Звуковые карты
      Когда на главной странице я перехожу в категорию "Компьютерная техника -> Комплектующие -> Звуковые карты"
        * на странице категории присутствует секция "Производители"
        * я заполняю ссылки в секции "Производители" с параметрами:
        | название | значение                                |
        | feature  | Компьютерная техника -> Комплектующие -> Звуковые карты |
        | category | Компьютерная техника -> Комплектующие -> Звуковые карты |
        | section  | Производители                           |
        | field    | Марка                                   |

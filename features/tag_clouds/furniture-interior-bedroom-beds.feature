# language:ru
# encoding: utf-8
Функционал: Мебель, интерьер, обиход -> Мебель для спальни -> Кровати - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Мебель, интерьер, обиход -> Мебель для спальни -> Кровати
      Когда на главной странице я перехожу в категорию "Мебель, интерьер, обиход -> Мебель для спальни -> Кровати"
        * на странице категории присутствует секция "Кровати"
        * я заполняю ссылки в секции "Кровати" с параметрами:
        | название | значение                                                  |
        | feature  | Мебель, интерьер, обиход -> Мебель для спальни -> Кровати |
        | category | Мебель, интерьер, обиход -> Мебель для спальни -> Кровати |
        | section  | Кровати                                                   |
        | field    | Вид                                                       |

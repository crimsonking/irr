# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Шины - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Автозапчасти и принадлежности -> Шины
      Когда на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Шины"
        * на странице категории присутствует секция "Диаметр"
        * я заполняю ссылки в секции "Диаметр" с параметрами:
        | название | значение                                             |
        | feature  | Авто и мото -> Автозапчасти и принадлежности -> Шины |
        | category | Авто и мото -> Автозапчасти и принадлежности -> Шины |
        | section  | Диаметр                                              |
        | field    | Диаметр                                              |
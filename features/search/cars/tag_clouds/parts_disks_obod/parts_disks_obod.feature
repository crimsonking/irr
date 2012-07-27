# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Диски - диаметр обода

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Диски"
        * на странице категории присутствует секция "Диаметр обода"

  Структура сценария: Облако тегов марок
    Когда я перехожу по ссылке "<ссылка>"
       То открыта не страница 404
        * в поле "Диаметр обода" выбрано значение "<текст>"
        * на странице поиска загружен список результатов
        * на странице показано >= 1 объявлений

  Примеры: 
  | текст | ссылка |

# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Автозапчасти и принадлежности -> Для легковых автомобилей - типы техники

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Автозапчасти и принадлежности -> Для легковых автомобилей"
        * на странице категории присутствует секция "Запчасти для иномарок и отечественных авто"

  Структура сценария: Облако тегов - тип техники
    Когда я перехожу по ссылке "<ссылка>"
       То открыта не страница 404
        * в поле "Запчасти для иномарок и отечественных авто" выбрано значение "<текст>"
        * на странице поиска загружен список результатов
        * на странице показано >= 1 объявлений

  Примеры: 
  | текст | ссылка |

# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Настольные игры - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Настольные игры"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по бильярду
    Когда я выбираю ссылку "Бильярд" в секции "Быстрый поиск"
       То ссылка содержит "billiards"
        * в поле "Вид" выбрано значение "бильярд"

  Сценарий: Фильтр по настольному теннису
    Когда я выбираю ссылку "Настольный теннис" в секции "Быстрый поиск"
       То ссылка содержит "tennis"
        * в поле "Вид" выбрано значение "настольный теннис"

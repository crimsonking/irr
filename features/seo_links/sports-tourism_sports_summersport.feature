# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Летний инвентарь - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Спортивные игры, виды спорта -> Летний инвентарь"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по мячам
    Когда я выбираю ссылку "Мячи" в секции "Быстрый поиск"
       То ссылка содержит "balls"
        * в поле "Тип снаряжения" выбрано значение "мячи"

  Сценарий: Фильтр по ракетки
    Когда я выбираю ссылку "Ракетки" в секции "Быстрый поиск"
       То ссылка содержит "rackets"
        * в поле "Тип снаряжения" выбрано значение "ракетки"

  Сценарий: Фильтр по роликовым конькам
    Когда я выбираю ссылку "Роликовые коньки" в секции "Быстрый поиск"
       То ссылка содержит "rollers"
        * в поле "Тип снаряжения" выбрано значение "роликовые коньки"

  Сценарий: Фильтр по скейтбордам
    Когда я выбираю ссылку "Скейтборды" в секции "Быстрый поиск"
       То ссылка содержит "skateboard"
        * в поле "Тип снаряжения" выбрано значение "скейтборды"

  Сценарий: Фильтр по футбольному снаряжению
    Когда я выбираю ссылку "Футбольная форма, бутсы" в секции "Быстрый поиск"
       То ссылка содержит "football"
        * в поле "Тип снаряжения" выбрано значение "футбольная экипировка, бутсы"

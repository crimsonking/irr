# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Другое - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Другое"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по козам
    Когда я выбираю ссылку "Козы" в секции "Быстрый поиск"
       То ссылка содержит "goats"
        * поле "Ключевые слова" равно "коза"

  Сценарий: Фильтр по коровам
    Когда я выбираю ссылку "Коровы" в секции "Быстрый поиск"
       То ссылка содержит "cows"
        * поле "Ключевые слова" равно "корова"

  Сценарий: Фильтр по лошадям
    Когда я выбираю ссылку "Лошади" в секции "Быстрый поиск"
       То ссылка содержит "horse"
        * поле "Ключевые слова" равно "лошадь"

  Сценарий: Фильтр по пчёлам
    Когда я выбираю ссылку "Пчёлы" в секции "Быстрый поиск"
       То ссылка содержит "bee"
        * поле "Ключевые слова" равно "пчелы"

# language:ru
# encoding: utf-8
Функционал: Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Туризм - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Спорт, туризм, отдых -> Снаряжение для рыбалки, охоты, активного отдыха -> Туризм"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по палаткам
    Когда я выбираю ссылку "Палатки" в секции "Быстрый поиск"
       То ссылка содержит "tent"
        * в поле "Тип снаряжения" равно "туристические палатки, мешки, коврики"

  Сценарий: Фильтр по рюкзакам
    Когда я выбираю ссылку "Рюкзаки" в секции "Быстрый поиск"
       То ссылка содержит "backpack"
        * в поле "Тип снаряжения" равно "рюкзаки"

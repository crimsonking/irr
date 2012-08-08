# language:ru
# encoding: utf-8
Функционал: Недвижимость - Дома, дачи и участки. Продажа - Участки - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи и участки. Продажа -> Участки"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по аренде земельных участков
    Когда я выбираю ссылку "Аренда земельных участков" в секции "Быстрый поиск"
       То ссылка содержит "rent"
        * в поле "Вид права" выбрано значение "аренда на 49 лет"

  Сценарий: Фильтр по участкам под ИЖС
    Когда я выбираю ссылку "Участки под ИЖС" в секции "Быстрый поиск"
       То ссылка содержит "izhs"
        * в поле "Вид разрешенного использования" выбрано значение "индивидуальное жилищное строительство"

  Сценарий: Фильтр по cадовым участкам
    Когда я выбираю ссылку "Садовые участки" в секции "Быстрый поиск"
       То ссылка содержит "garden"
        * в поле "Вид разрешенного использования" выбрано значение "садоводство или огородничество"

  Сценарий: Фильтр по земельным участкам сельхозназначения
    Когда я выбираю ссылку "Земельные участки сельхозназначения" в секции "Быстрый поиск"
       То ссылка содержит "selhoz"
        * в поле "Категория земли" выбрано значение "земли С/Х назначения"

  Сценарий: Фильтр по 4 соткам
    Когда я выбираю ссылку "4 сотки" в секции "Быстрый поиск"
       То ссылка содержит "4sotki"
        * значение в поле "Площадь участка" равно от 4
        * значение в поле "Площадь участка" равно до 4

  Сценарий: Фильтр по 6 соткам
    Когда я выбираю ссылку "6 соток" в секции "Быстрый поиск"
       То ссылка содержит "6sotok"
        * значение в поле "Площадь участка" равно от 6
        * значение в поле "Площадь участка" равно до 6

  Сценарий: Фильтр по 8 соткам
    Когда я выбираю ссылку "8 соток" в секции "Быстрый поиск"
       То ссылка содержит "8sotok"
        * значение в поле "Площадь участка" равно от 8
        * значение в поле "Площадь участка" равно до 8

  Сценарий: Фильтр по 10 соткам
    Когда я выбираю ссылку "10 соток" в секции "Быстрый поиск"
       То ссылка содержит "10sotok"
        * значение в поле "Площадь участка" равно от 10
        * значение в поле "Площадь участка" равно до 10

  Сценарий: Фильтр по 15 соткам
    Когда я выбираю ссылку "15 соток" в секции "Быстрый поиск"
       То ссылка содержит "15sotok"
        * значение в поле "Площадь участка" равно от 15
        * значение в поле "Площадь участка" равно до 15

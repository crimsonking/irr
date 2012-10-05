# language:ru
# encoding: utf-8
Функционал: Оборудование -> Пищевое - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Оборудование -> Пищевое"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по холодильному оборудованию
    Когда я выбираю ссылку "Холодильное оборудование" в секции "Быстрый поиск"
       То ссылка содержит "refrigerator"
        * в поле "Тип оборудования" выбраны следующие значения:
          | value       |
          | холодильное |
# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Сантехника -> Бассейны - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Сантехника -> Бассейны"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по Intex
    Когда я выбираю ссылку "Intex" в секции "Быстрый поиск"
       То ссылка содержит "intex"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |
          | куплю  |
        * значение в поле "Ключевые слова" выбрано значение "intex"

# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Сантехника -> Раковины, умывальники - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Сантехника -> Раковины, умывальники"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по Duravit
    Когда я выбираю ссылку "Duravit" в секции "Быстрый поиск"
       То ссылка содержит "duravit"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |
          | куплю  |
        * значение в поле "Ключевые слова" выбрано значение "duravit"

  Сценарий: Фильтр по Gustavsberg
    Когда я выбираю ссылку "Gustavsberg" в секции "Быстрый поиск"
       То ссылка содержит "gustavsberg"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |
          | куплю  |
        * значение в поле "Ключевые слова" выбрано значение "gustavsberg"

  Сценарий: Фильтр по Ido
    Когда я выбираю ссылку "Ido" в секции "Быстрый поиск"
       То ссылка содержит "ido"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |
          | куплю  |
        * значение в поле "Ключевые слова" выбрано значение "ido"

  Сценарий: Фильтр по Roca
    Когда я выбираю ссылку "Roca" в секции "Быстрый поиск"
       То ссылка содержит "roca"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |
          | куплю  |
        * значение в поле "Ключевые слова" выбрано значение "roca"

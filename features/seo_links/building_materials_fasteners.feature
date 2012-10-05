# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Материалы -> Элементы крепежа - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Материалы -> Элементы крепежа"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по анкерным болтам
    Когда я выбираю ссылку "Анкерные болты" в секции "Быстрый поиск"
       То ссылка содержит "ankernye-bolty"
        * в поле "Тип крепежа" выбраны следующие значения:
          | value          |
          | анкерные болты |

  Сценарий: Фильтр по болтам, шайбам, гайкам
    Когда я выбираю ссылку "Болты, шайбы, гайки" в секции "Быстрый поиск"
       То ссылка содержит "gayki"
        * в поле "Тип крепежа" выбраны следующие значения:
          | value               |
          | болты, шайбы, гайки |

  Сценарий: Фильтр по винтам, шурупам
    Когда я выбираю ссылку "Винты, шурупы" в секции "Быстрый поиск"
       То ссылка содержит "vinty"
        * в поле "Тип крепежа" выбраны следующие значения:
          | value         |
          | винты, шурупы |

  Сценарий: Фильтр по гвозди
    Когда я выбираю ссылку "Гвозди" в секции "Быстрый поиск"
       То ссылка содержит "gvozdi"
        * в поле "Тип крепежа" выбраны следующие значения:
          | value  |
          | гвозди |

  Сценарий: Фильтр по дюбелям
    Когда я выбираю ссылку "Дюбеля" в секции "Быстрый поиск"
       То ссылка содержит "dyubelya"
        * в поле "Тип крепежа" выбраны следующие значения:
          | value  |
          | дюбеля |
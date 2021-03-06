# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Сантехника -> Смесители - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Сантехника -> Смесители"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по смесителям для душа
    Когда я выбираю ссылку "Смесители для душа" в секции "Быстрый поиск"
       То ссылка содержит "shower"
        * в поле "Назначение" выбраны следующие значения:
          | value    |
          | для душа |

  Сценарий: Фильтр по смесителям для ванной
    Когда я выбираю ссылку "Смесители для ванной" в секции "Быстрый поиск"
       То ссылка содержит "bath"
        * в поле "Назначение" выбраны следующие значения:
          | value          |
          | для ванны/душа |

  Сценарий: Фильтр по смесителям для раковины
    Когда я выбираю ссылку "Смесители для раковины" в секции "Быстрый поиск"
       То ссылка содержит "sink"
        * в поле "Назначение" выбраны следующие значения:
          | value        |
          | для раковины |

  Сценарий: Фильтр по смесителям для биде
    Когда я выбираю ссылку "Смесители для биде" в секции "Быстрый поиск"
       То ссылка содержит "bidet"
        * в поле "Назначение" выбраны следующие значения:
          | value    |
          | для биде |

  Сценарий: Фильтр по смесителям для умывальника
    Когда я выбираю ссылку "Смесители для умывальника" в секции "Быстрый поиск"
       То ссылка содержит "wash-stand"
        * в поле "Назначение" выбраны следующие значения:
          | value           |
          | для умывальника |

  Сценарий: Фильтр по универсальным смесителям
    Когда я выбираю ссылку "Универсальные смесители" в секции "Быстрый поиск"
       То ссылка содержит "general"
        * в поле "Назначение" выбраны следующие значения:
          | value         |
          | универсальный |

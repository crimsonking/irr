# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Холодильники - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Холодильники"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по морозильным камерам
    Когда я выбираю ссылку "Морозильные камеры" в секции "Быстрый поиск"
       То ссылка содержит "moroz"

  Сценарий: Фильтр по автомобильным холодильникам
    Когда я выбираю ссылку "Автомобильные холодильники" в секции "Быстрый поиск"
       То ссылка содержит "auto"
        * в поле "Вид техники" выбраны следующие значения:
          | value                     |
          | автомобильный холодильник |

  Сценарий: Фильтр по сумкам-холодильникам
    Когда я выбираю ссылку "Сумки-холодильники" в секции "Быстрый поиск"
       То ссылка содержит "bag"
        * в поле "Вид техники" выбраны следующие значения:
          | value             |
          | cумка-холодильник |

  Сценарий: Фильтр двухкамерным холодильникам
    Когда я выбираю ссылку "Двухкамерные холодильники" в секции "Быстрый поиск"
       То ссылка содержит "2cameras"
        * в поле "Количество кмаер" выбраны следующие значения:
          | value        |
          | двухкамерный |
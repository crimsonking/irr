# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость -> Комнаты и доли. Продажа

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_rooms-sale/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю комнату в 2х-комнатной квартире, этаж 3" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в рублях

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле                         | значение |
        | Количество комнат на продажу | 3        |
        | Комнат в квартире/общежитии  | 3        |
        | Этаж                         | 3        |

  Сценарий: Импорт объявления ИП
    Когда я обновляю и импортирую файл "real-estate_rooms-sale/scenario1.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю комнату в 2х-комнатной квартире, этаж 3" присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в рублях

    Когда я открываю детали этого объявления
        * на вкладке "Все" указаны следующие параметры:
        | поле                         | значение |
        | Количество комнат на продажу | 3        |
        | Комнат в квартире/общежитии  | 3        |
        | Этаж                         | 3        |

  Сценарий: Импорт объявления с фото
    Когда я обновляю и импортирую файл "real-estate_rooms-sale/scenario2.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю комнату в 2х-комнатной квартире, этаж 3 с фото" присутствует в списке
        * у объявления отображается загруженная фотография

  Сценарий: Импорт объявления в Бийске
    Когда я обновляю и импортирую файл "real-estate_rooms-sale/scenario4.xml" для роли "Доверенный интернет-партнер"

    Когда открыта страница для региона "Бийск"
        * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
       То в ЛК ИП объявление с названием "Продаю комнату в 2х-комнатной квартире в Бийске, этаж 3" присутствует в списке
        * у объявления указан город "Бийск"

  Сценарий: Импорт объявления в Петербург c метро Адмиралтейская
    Когда я обновляю и импортирую файл "real-estate_rooms-sale/scenario5.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Санкт-Петербург"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Продаю комнату в 2х-комнатной квартире в Питере, этаж 3" присутствует в списке
    Когда я открываю детали этого объявления
       То в деталях объявления категории "Недвижимость -> Комнаты и доли. Продажа" "Станция метро" равно "Адмиралтейская"

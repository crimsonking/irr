# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Аксессуары -> Одежда для животных - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Животные и растения -> Аксессуары -> Одежда для животных
      Когда на главной странице я перехожу в категорию "Животные и растения -> Аксессуары -> Одежда для животных"
        * на странице категории присутствует секция "Вид животного"
        * я заполняю ссылки в секции "Вид животного" с параметрами:
        | название | значение                                                 |
        | feature  | Животные и растения -> Аксессуары -> Одежда для животных |
        | category | Животные и растения -> Аксессуары -> Одежда для животных |
        | section  | Вид животного                                            |
        | field    | Вид животного                                            |

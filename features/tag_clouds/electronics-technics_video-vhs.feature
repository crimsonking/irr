# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Аудио, Видео -> Видеоплееры и рекордеры - VHS - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Аудио, Видео -> Видеоплееры и рекордеры - VHS
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Аудио, Видео -> Видеоплееры и рекордеры - VHS"
        * на странице категории присутствует секция "VHS-видеоплееры"
        * я заполняю ссылки в секции "VHS-видеоплееры" с параметрами:
        | название | значение                                                               |
        | feature  | Электроника и техника -> Аудио, Видео -> Видеоплееры и рекордеры - VHS |
        | category | Электроника и техника -> Аудио, Видео -> Видеоплееры и рекордеры - VHS |
        | section  | VHS-видеоплееры                            |
        | field    | Марка                                      |

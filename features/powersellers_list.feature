# language:ru
# encoding: utf-8
@smoketest
Функционал: Страница интернет-партнёров

  Контекст:
      Когда открыта страница для региона "Россия"

  Сценарий: Проверка страницы списка интернет-партнеров
      Когда я перехожу на страницу списка интернет-партнеров
         То в списке присутствуют интернет-партнеры
          * у каждого интернет-партнера отображается логотип

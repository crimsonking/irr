# language:ru
# encoding: utf-8
@smoketest
Функционал: Блок "Интересные объявления"

  Сценарий: Проверка отображения блока для Москвы
      Когда открыта страница для региона "Москва"
          * в блоке "Интересные объявления" показаны объявления
         То в блоке "Интересные объявления" показано <= 10 объявлений
          * в блоке "Интересные объявления" показано > 0 объявлений
          * для каждого объявления в блоке "Интересные объявления" показана фотография
          * для каждого объявления в блоке "Интересные объявления" показана цена

  Сценарий: Проверка отображения блока для России
      Когда открыта страница для региона "Россия"
          * в блоке "Интересные объявления" показаны объявления
         То в блоке "Интересные объявления" показано <= 10 объявлений
          * в блоке "Интересные объявления" показано > 0 объявлений
          * для каждого объявления в блоке "Интересные объявления" показана фотография
          * для каждого объявления в блоке "Интересные объявления" показана цена

# Премиум с фотками

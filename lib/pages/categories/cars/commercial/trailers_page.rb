# encoding: utf-8

class CategoryCarsCommercialTrailersPage < AdDetailsPage
  include PageObject

  div :used_or_new, :xpath => "//div[@data-item-name='used-or-new']"
  text_field :car_year_from, :name => "car-year[from]"
  text_field :car_year_to, :name => "car-year[to]"
  div :bodytype, :xpath => "//div[@data-item-name='trailertype']"
  div :make, :xpath => "//div[@data-item-name='make']"
  div :model, :xpath => "//div[@data-item-name='model']"
  text_field :shafts, :name => "shafts"
  
  text_field :mileage_from, :name => "mileage[from]"
  text_field :mileage_to, :name => "mileage[to]"

  def set_parameter (hash)
    case hash['parameter']

    when "Цена"
      self.price_from = hash['min']
      self.price_to = hash['max']

    when "Валюта"
      singleselect(self.currency_element, hash['value'])

    when "Новый или подержанный"
      multiselect(self.used_or_new_element, hash['value'])

    when "Год выпуска"
      self.car_year_from = hash['min']
      self.car_year_to = hash['max']

    when "Тип прицепа"
      multiselect(self.bodytype_element, hash['value'])

    when "Марка"
      multiselect(self.make_element, hash['value'])

    when "Модель"
      multiselect(self.model_element, hash['value'])

    when "Число осей"
      self.shafts = hash['value']

    when "С фото"
      self.hasimages_element.click
      
    when "С видео"
      self.hasvideo_element.click
      
    when "Источник"
      singleselect(self.source_from_element, hash['value'])  
      
    when "Поданные"
      singleselect(self.date_create_element, hash['value'])
      
    else
      raise "Неизвестный параметр: #{hash['parameter']}"
    end
  end
  
  def get_parameter (field)
    case field
    when "Год выпуска"
      result = get_value_parameter(field)
    when "Пробег"
      # Пробег вводиться в тыс. км, отображается в км.
      # Делим отображаемый результат на 1000 
      result = get_value_parameter(field).to_i / 1000
    when "Марка", "Модель", "Тип кузова", "Тип трансмиссии"
      result = get_unique_parameter(field)
    else
      result = get_generic_parameter(field) 
    end
    result
  end
end
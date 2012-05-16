# encoding: utf-8

class CategoryCarsCommercialSmallPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/cars/commercial/small"

  irr_multi_select "Новый или подержанный", "used-or-new"
  irr_range_select "Год выпуска", "car-year"
  irr_multi_select "Тип трансмиссии", "transmittion"
  irr_multi_select "Тип кузова", "bodytype"
  irr_multi_select "Марка", "make"
  irr_multi_select "Модель", "model"
  irr_multi_select "Источник", "sourcefrom"
  irr_range_select "Пробег", "mileage"

  def set_parameter (hash)
    if @@setter_functions.has_key?(hash['parameter'])
      self.send "#{@@setter_functions[hash['parameter']]}", hash
    else
      super(hash)
    end
  end
  
  def get_parameter (field)
    case field
    when "Пробег"
      # Пробег вводиться в тыс. км, отображается в км.
      # Делим отображаемый результат на 1000 
      result = self.send("#{@@getter_functions[field]}").to_i / 1000
    else
      result = self.send("#{@@getter_functions[field]}")
    end
    result
  end
end

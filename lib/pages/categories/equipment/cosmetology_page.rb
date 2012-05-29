# encoding: utf-8

class CategoryEquipmentCosmetologyPage < AdDetailsPage
  include PageObject

  @@url_suffix = "/equipment/cosmetology"
  @category = "Оборудование -> Косметологическое и медицинское"

  irr_multi_select "Тип предложения", "offertype"
  irr_multi_select "Состояние", "used-or-new"
  irr_multi_select "Тип оборудования", "type"
end

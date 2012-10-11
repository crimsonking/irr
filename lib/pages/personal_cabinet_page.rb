# encoding: utf-8
class PersonalCabinetPage
  include PageObject

  div :title, class: "title"

  div :ads, class: "lkMyAdsTable"

  def is_displayed?
    self.title?
  end

  def has_adverts?
    self.ads_element.exists?
  end

  def select_all_ads
    self.checkbox_element(id: "NotRuRunAll").check
  end

  def do_delete_all
    self.link_element(id: "delete").click
    self.link_element(id: "confirmOk").when_present.click
  end

  def has_ad_with_title? title
    self.ads_element.when_present.div_elements(class: "lkMyAdsBlock").find {|d| 
            d.element.td(class: "lkMyAdsBlockText").a.text == title}.
         nil? == false
  end

  def get_ad_id_for_title title
    self.ads_element.when_present.div_elements(class: "lkMyAdsBlock").find {|d| 
         d.element.td(class: "lkMyAdsBlockText").a.text == title}.
            span_element(class: "lkMyAdID").text
  end

  def find_element_by_id id
    self.ads_element.div_elements(class: "lkMyAdsBlock").find {|d| 
      d.element.span(class: "lkMyAdID").text == id}
  end

  def get_price ad_id
    self.find_element_by_id(ad_id).
         span_element(class: "lkMyAdPrice").text.gsub(" ",'')
  end

  def get_region ad_id
    self.find_element_by_id(ad_id).span_element(class: "lkMyAdRegion").text
  end

  def get_status ad_id
    self.find_element_by_id(ad_id).div_element(class: "lkMyAdStatus").text
  end

  def has_photo ad_id
    self.find_element_by_id(ad_id).element.td(class: "lkMyAdsBlockImg").
         img.exists?
  end

  def is_pushed ad_id
    self.find_element_by_id(ad_id).element.i(class: "upactive").exists?
  end

  def is_premium ad_id
    self.find_element_by_id(ad_id).element.i(class: "specactive").exists?
  end

  def is_highlighted ad_id
    self.find_element_by_id(ad_id).element.
         wd.attribute("class").include?("selected")
  end

  def do_edit ad_id
    self.find_element_by_id(ad_id).
         link_element(link_text: "Редактировать").click
  end

  def do_push ad_id
    self.find_element_by_id(ad_id).
         link_element(link_text: "Поднять").click
  end

  def do_highlight ad_id
    self.find_element_by_id(ad_id).
         link_element(link_text: "Выделить").click
  end

  def do_premium ad_id
    self.find_element_by_id(ad_id).
         link_element(link_text: "Премиум").click
  end

  def open_details ad_id
    self.find_element_by_id(ad_id).element.td(class: "lkMyAdsBlockText").a.click
  end

end
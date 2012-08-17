# encoding: utf-8
class AddAdvertStep2 < AdDetailsPage
  include PageObject

  select_list :region, id: "fr-region"
  text_field  :address_city, name: "address_city"
  text_field  :address_street, name: "mapStreetVisible"
  text_field  :address_house, name: "mapHouseNr"
  text_field  :address_metro, name: "metro"
  text_field  :address_sosshe, name: "sosshe"
  select_list :rent_period, name: "rent_period"

  select_list :mark, name: "make"
  select_list :model, name: "model"
  select_list :currency, name: "currency"
  text_field :model_text, name: "model"

  text_field :f_title, id: "f_title"
  text_field :f_text, id: "f_text"
  file_field :upload, id: "input-file-upload"
  unordered_list :uploaded_photos, id: "photos"
  link :add_video, id: "showPopupVideoAdd"

  div :videoPopup, id: "popupVideoAdd"
  text_field :videoContents, id: "video_content"
  link :uploadVideoButton, id: "uploadVideoButton"
  div :video_preview, id: "videoContentBlock"

  link :save, id: "submit-edit-form"
  button :next_step, id: "next_link"

  div :no_package_message, id: "message-free-add"
  div :has_package, class: "ico-messagesok"

  def set_street(street)
    self.address_street = street
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_shosse(shosse)
    self.address_shosse = shosse
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_house(house)
    self.address_house = house
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_metro(metro)
    self.address_metro = metro
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_city(city)
    self.address_city = city
    self.link_element(xpath: "//ul[contains(@class,'ui-autocomplete')]" + 
                                 "[contains(@style,'display: block')]//a").when_present.click
  end

  def set_value_for_custom(control, hash)
    # По типу следующего контрола устанавливаем значение
    case control.tag_name
    when "select"
      # Комбобокс
      control.parent.to_subtype.div(class: "ik_select_link").click
      list = self.div_elements(class: "ik_select_list_inner").select{|div| div.visible?}[0]
      list.span_element(text: hash['value']).click
    when "input"
      control.value = hash["value"]
    else
      # Текстбокс и комбобокс - разделены ~
      control.value = hash["value"].split(" ~ ")[0]
      set_value_for_custom(control.parent.parent.select_list, hash['value'].split(" ~ ")[1])
    end
  end

  def set_custom_parameter(hash)
    # Ищем ближайший контрол по hash['parameter']
    # Сначала checkbox
    begin
      self.checkbox_element(xpath: "//label[contains(.,'#{hash['parameter']}')]/input").check
    rescue Watir::Exception::UnknownObjectException => e
      label = self.label_element(text: /#{hash['parameter']}/, class: "b-form-LK_control-label")
      control_id = label.element.attribute_value("for")
      if control_id.empty?
        control = label.parent.element.input
        unless control.exists?
          control = label.parent.element.select_list
        end
      else
        control = self.div_element(id: "customfields").element.element(id: control_id)
      end
      set_value_for_custom(control.to_subtype, hash)
    end
  end

  def set_parameter(hash)
    begin
      case hash['parameter']
      when "Населённый пункт"
        self.set_city hash['value']
      when "Улица"
        self.set_street hash['value']
      when "Дом"
        self.set_house hash['value']
      when "Ближайшее метро"
        self.set_metro hash['value']
      when "Заголовок"
        self.f_title = hash['value']
      when "Срок сдачи"
        self.rent_period = hash['value']
      when "Валюта"
        set_value_for_custom(self.currency_element, hash)
      when "Марка"
        self.mark = hash['value']
      when "Модель"
        if self.model?
          set_value_for_custom(self.model_element, hash)
        else
          self.model_text = hash['value'] 
        end
      when "Текст"
        self.f_text = hash['value']
      else
        self.set_custom_parameter(hash)
      end
    rescue Exception => e
      raise "Ошибка установки параметра #{hash['parameter']} = '#{hash['value']}':\n#{e}"
    end
  end

  def load_photo
    # Загружаем файл из URL
    Net::HTTP.start("mandroid.ru") do |http|
      resp = http.get("/sites/default/files/imagecache/full-node-news/softattached/irr.png")
      open("/tmp/logo_irr.png", "wb") do |file|
        file.write(resp.body)
      end
    end
    # Указываем этот файл
    el_id = self.upload_element.element.id
    @browser.execute_script("document.getElementById('#{el_id}').setAttribute('class', '')")
    self.upload_element.element.set "/tmp/logo_irr.png"
    # Ждём пока появится загруженная фотография
    self.uploaded_photos_element.
         list_item_element(id: "downloaded-photo-1").when_present(30).
         image_element.exists?
  end

  def load_video
    self.add_video_element.when_present.click
    Watir::Wait.until { self.videoPopup_element.exists? }

    self.videoContents_element.when_present.value = <<RUTUBE_VIDEO
    <OBJECT width="470" height="353">
      <PARAM name="movie" value="http://video.rutube.ru/945e273fd29ca440ba453030b458b6bf"></PARAM>
      <PARAM name="wmode" value="window"></PARAM><PARAM name="allowFullScreen" value="true"></PARAM>
      <EMBED src="http://video.rutube.ru/945e273fd29ca440ba453030b458b6bf" type="application/x-shockwave-flash" wmode="window" width="470" height="353" allowFullScreen="true" ></EMBED>
    </OBJECT>
RUTUBE_VIDEO

    self.uploadVideoButton
    Watir::Wait.until {self.video_preview?}
  end

  def save
    self.save_element.when_present.click
  end

  def has_package_message
    self.has_package_element.exists?
  end

  def get_package_message
    self.no_package_message_element.when_present.text
  end

  def ensure_additional_parameters_are_displayed
    unless self.div_element(class: "b-form-LK_other-params").visible?
      self.link_element(text: "Дополнительные характеристики").click
    end
  end

  def ensure_section_is_visible(name)
    self.div_elements(class: "b-form-LK_wrap_tabs_item").select{|div| 
      div.div_element(class: "b-form-LK_wrap_tabs_item_title_wrap", text: name).exists?
    }[0].click
  end

end

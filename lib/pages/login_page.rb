# encoding: utf-8

class LoginPage
  include PageObject

  text_field :username, xpath: "//div[@id='popup-wrap']//input[@name='login']"
  text_field :password, xpath: "//div[@id='popup-wrap']//input[@name='password']"
  checkbox :remember_me, xpath: "//div[@id='popup-wrap']//input[@name='is_remember_me']"
  link :login, xpath: "//div[@id='popup-wrap']//a[@class='loginFormSubmit']"

  paragraph :incorrect_login_message, class: "authFailedMessage", index: 1

  def login_as(username, password, remember_me)
    self.username_element.when_present
    self.username = username
    self.password = password
    self.remember_me_element.check if remember_me
    self.login
  end
end

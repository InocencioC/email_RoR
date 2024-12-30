class UserMailer < ApplicationMailer

 def welcome_email
  attachments.inline['anexo.png'] = File.read("#{Rails.root}/app/assets/images/images.png")
  @name = "Inocencio Cordeiro"
  @site = "example.com"

    mail to: "user@gmail.com.", subject: 'Bem vindo ao site'
  end

  def niver
    @email = 'jose@gmail.com'
    @name = 'José da Silva'
    mail to: @email, subject: "Feliz aniversário #{@name}"
  end
end

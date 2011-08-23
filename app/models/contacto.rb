class Contacto < ActiveRecord::Base
    devise :database_authenticatable

    before_create :init_devise_password

   
# slffalfkaefjlkeaie
    def init_devise_password
        password = Devise.friendly_token[0,20]
    end
end

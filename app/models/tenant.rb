class Tenant < ApplicationRecord
    attr_accessor :country_code

    has_many :paiements, dependent: :destroy
    has_one :apartment

    mount_uploader :avatar, AvatarUploader

    enum status: {
      active: 'active',
      inactive: "inactive"
  }

    validates :firstname, 
        presence: {
        message: "Le nom est obligatoire"
      }, 
        length: {maximum: 50, minumum: 2}
    
    validates :lastname, 
        presence: {
            message: "Le prénom est obligatoire"
          },  length: {maximum: 50, minumum: 2}
    
    validates :phone_number,
        presence: {
          message: "Le numéro de téléphone obligatoire"
        },
        uniqueness: {
          message: ->(object, data) do
            "Le numéro #{data[:value]} existe déja!"
          end
        },
        phone_number: true
    validates :email,
        presence: {
            message: "L'addresse email est obligatoire"
        },
        uniqueness: {
            case_sensitive: false,
            message: ->(object, data) do
              "L'adresse email #{data[:value]} existe déja!"
            end
          },
        email: true
          
    
    def full_name 
        "#{firstname } #{lastname}" 
    end

    scope :active, lambda { where(:status => active)}
    # Ex:- scope :active, lambda {where(:active => true)}

    def active 
      self.status == "active"
    end
end

class Apartment < ApplicationRecord
    has_many :paiements, dependent: :destroy

    validates :areas, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :nb_pieces, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

class Cliente < ApplicationRecord
    validates :nit, presence: true, uniqueness: true
    has_many :facturas
end

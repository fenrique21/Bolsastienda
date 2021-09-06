class Cliente < ApplicationRecord
    validates :nit, presence: true, uniqueness: true
end

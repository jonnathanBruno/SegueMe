class Team < ApplicationRecord
    has_many :mountings 

    validates :name, presence: true
    validates :qnt, presence: true, numericality: { only_integer: true }
end

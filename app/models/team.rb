class Team < ApplicationRecord
    has_many :mountings, dependent: :destroy

    validates :name, presence: true
    validates :qnt, presence: true, numericality: { only_integer: true }
end

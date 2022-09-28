class Team < ApplicationRecord
    has_many :mountings 

    validates :nome_equipe, presence: true
    validates :qnt_componente, presence: true, numericality: { only_integer: true }
end

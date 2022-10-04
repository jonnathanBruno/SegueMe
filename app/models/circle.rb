class Circle < ApplicationRecord
    has_many :mountings, dependent: :destroy 
end

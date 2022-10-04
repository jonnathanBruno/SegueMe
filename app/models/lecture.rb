class Lecture < ApplicationRecord
    has_many :mountings, dependent: :destroy
end

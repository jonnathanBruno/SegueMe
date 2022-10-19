class Follower < ApplicationRecord
    has_one :mounting, dependent: :destroy
    belongs_to :parish, optional: true
  
    validates :name, presence: true, uniqueness: true, 
              :length =>{ :maximum => 45,
                          :too_long => ": %{count} caracteres é o máximo permitido" }

    validates :address, presence: true
    validates :birth, presence: true

    paginates_per 100
end

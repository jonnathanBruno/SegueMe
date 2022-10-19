class Follower < ApplicationRecord
    has_one :mounting, dependent: :destroy
    belongs_to :parish, optional: true
  
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true
    validates :birth, presence: true

    paginates_per 100
end

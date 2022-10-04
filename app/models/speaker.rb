class Speaker < ApplicationRecord
    has_one :mounting, dependent: :destroy
    belongs_to :parish, optional: true

    validates :name, presence: true
    validates :address, presence: true
    validates :contact, presence: true
end

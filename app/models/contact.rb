class Contact < ApplicationRecord
  belongs_to :follower
  validates :contact, presence: true
end

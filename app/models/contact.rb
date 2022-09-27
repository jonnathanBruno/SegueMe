class Contact < ApplicationRecord
  belongs_to :follower
  validates :contato_1, presence: true
end

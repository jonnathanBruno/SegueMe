class Follower < ApplicationRecord
  belongs_to :parish
  has_many :contacts
  has_one :mounting
end

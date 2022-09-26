class Follower < ApplicationRecord
  belongs_to :team
  belongs_to :parish
  has_many :contacts
end

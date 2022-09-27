class Follower < ApplicationRecord
  belongs_to :parish
  has_one :contact
  accepts_nested_attributes_for :contact
  has_one :mounting
end

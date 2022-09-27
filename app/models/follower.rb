class Follower < ApplicationRecord
  belongs_to :parish
  has_one :contact
  accepts_nested_attributes_for :contact
  has_one :mounting

  validates :nome, presence: true
  validates :email, presence: true
  validates :endereco, presence: true
  validates :parish_id, presence: true
  validates :idade, presence: true
end

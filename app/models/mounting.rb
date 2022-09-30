class Mounting < ApplicationRecord
  belongs_to :follower
  belongs_to :team
  belongs_to :circle

  validates :team_id, presence: true
  validates :funcao, presence: true
  validates :ano, presence: true
  validates :follower_id, presence: true, uniqueness: true
end

class Mounting < ApplicationRecord
  belongs_to :follower
  belongs_to :team, optional: true
  belongs_to :circle, optional: true

  validates :occupation, presence: true
  validates :year, presence: true
  validates :follower_id, presence: true, uniqueness: true
end

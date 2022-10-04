class Mounting < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :circle, optional: true
  belongs_to :lecture, optional: true

  belongs_to :follower, optional: true
  belongs_to :participant, optional: true
  belongs_to :speaker, optional: true

  validates :occupation, presence: true
  validates :year, presence: true
end

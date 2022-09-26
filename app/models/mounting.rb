class Mounting < ApplicationRecord
  belongs_to :follower
  belongs_to :team
end

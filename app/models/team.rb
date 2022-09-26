class Team < ApplicationRecord
    has_many :followers
    has_many :mountings 
end

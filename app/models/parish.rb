class Parish < ApplicationRecord
    has_many :followers
    has_many :participants
    has_many :speakers
end

class Mainroom < ApplicationRecord
  has_many :user_mainrooms
  has_many :users, through: :user_mainrooms
end

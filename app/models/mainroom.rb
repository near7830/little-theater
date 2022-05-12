class Mainroom < ApplicationRecord
  has_many :user_mainrooms
  has_many :users, through: :user_mainrooms
  has_many :messages
  has_many :events

  validates :name, presence: true
end
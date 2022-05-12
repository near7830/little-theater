class Event < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :start_time, presence: true
  
  belongs_to :user
  belongs_to :mainroom
end

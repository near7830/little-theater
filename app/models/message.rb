class Message < ApplicationRecord
  belongs_to :mainroom
  belongs_to :user
end

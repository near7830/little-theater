class UserMainroom < ApplicationRecord
  belongs_to :mainroom
  belongs_to :user
end

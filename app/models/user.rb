class User < ActiveRecord::Base
  has_many  :shouts
  validates :user_name, presence: true
end

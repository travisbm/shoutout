class Shout < ActiveRecord::Base
  belongs_to :user
  validates :message, length: { in: 1..160 }
end

class Order < ApplicationRecord
  belongs_to :user
  belongs_to :meal

  validates :pick_up_time, presence: true
end

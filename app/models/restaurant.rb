class Restaurant < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader

  geocoded_by :fulladdress, :latitude  => :latitude, :longitude => :longitude
  after_validation :geocode

  has_many :meals
  has_many :orders, through: :meals

  def fulladdress
    "#{address}, #{post_code}, #{city}"
  end

end

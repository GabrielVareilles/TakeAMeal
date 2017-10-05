class Meal < ApplicationRecord
  mount_uploader :photo, PhotoUploader
end

class Course < ApplicationRecord
  has_one_attached :image

  belongs_to :curator, class_name: 'User'

  validates :title, presence: true
end

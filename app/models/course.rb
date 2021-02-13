class Course < ApplicationRecord
  belongs_to :curator, class_name: 'User'

  validates :title, presence: true
end

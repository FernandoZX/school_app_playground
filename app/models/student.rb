class Student < ApplicationRecord
  belongs_to :teacher, optional: true
  has_many :enrollments
  has_many :klasses, through: :enrollments
end

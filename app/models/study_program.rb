class StudyProgram < ApplicationRecord
  has_many :subject_assignments
  has_many :subject, through: :subject_assignments
end

# == Schema Information
#
# Table name: tests
#
#  id          :integer          not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  subject_id  :integer
#  template_id :integer
#
# Indexes
#
#  index_tests_on_subject_id   (subject_id)
#  index_tests_on_template_id  (template_id)
#

class Test < ApplicationRecord
  has_many :topic_assignments
  has_many :topics, through: :topic_assignments
  has_many :question_assignments
  has_many :questions, through: :question_assignments

  belongs_to :subject

  # Simple validation syntax (not so great)
  #validates_presence_of :title, :desription
  #validates_numericality_of :title

  # Alternatice (better) syntax
  validates :title, presence: true#, numericality: true
  scope :with_subject_title, -> (subject) { includes([:subject]).where(subject: { title: subject }).order('created_at DESC') }
end

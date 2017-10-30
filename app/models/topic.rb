# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_topics_on_subject_id  (subject_id)
#

class Topic < ApplicationRecord
  has_many :topic_assignment
  has_many :tests, through: :topic_assignment
  belongs_to :subject
end

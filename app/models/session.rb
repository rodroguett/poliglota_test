class Session < ApplicationRecord

  validates :number, presence: true
  validates :date, presence: true
  validates :course_id, presence: true

  belongs_to :course
end

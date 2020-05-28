class Professor < ApplicationRecord

  validates :name, presence: true

  has_many :courses, dependent: :destroy
end

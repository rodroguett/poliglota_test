class Professor < ApplicationRecord
  has_many :courses, dependent: :destroy
end

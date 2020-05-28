class Course < ApplicationRecord

  NUMBER_OF_SESSIONS = 8

  belongs_to :professor
  has_many :sessions, dependent: :destroy

  after_save :plan_sessions

  def plan_sessions

    date = self.first_session

    NUMBER_OF_SESSIONS.times do |number|
      Session.create(number: number, date: date, course: self)
      # if the first session it's a monday or tuesday, the next session its the same week
      # else, the next session it's the next week
      date =
        if date.monday? || date.tuesday?
          date = date + 2.days
        elsif date.wednesday? || date.thursday?
          date = date + 5.days
        end
    end

  end

end

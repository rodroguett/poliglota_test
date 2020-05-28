class AddFirstSessionToCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :first_session, :datetime
  end
end

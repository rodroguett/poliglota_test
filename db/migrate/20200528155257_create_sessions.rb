class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :number
      t.datetime :date
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

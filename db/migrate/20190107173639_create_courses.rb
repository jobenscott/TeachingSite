class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.datetime :length
      t.integer :difficulty

      t.timestamps
    end
  end
end

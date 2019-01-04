class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :length
      t.jsonb :data
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end

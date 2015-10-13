class CreateGradings < ActiveRecord::Migration
  def change
    create_table :gradings do |t|
      t.integer :student_id
      t.string :name
      t.float :number
      t.integer :category_id

      t.timestamps null: false
    end
  end
end

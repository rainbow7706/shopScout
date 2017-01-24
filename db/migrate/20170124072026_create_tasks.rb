class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :survey, index: true, foreign_key: true
      t.string :title
      t.string :ans_1
      t.string :ans_2
      t.string :ans_3
      t.string :ans_4
      t.string :ans_5

      t.timestamps null: false
    end
  end
end

class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :survey_type
      
      t.timestamps null: false
    end
  end
end

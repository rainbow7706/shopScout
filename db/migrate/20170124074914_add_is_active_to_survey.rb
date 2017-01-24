class AddIsActiveToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :is_active, :integer
  end
end

class CreateFoodWeeks < ActiveRecord::Migration[6.1]
  def change
    create_table :food_weeks do |t|
      t.references :food, null: false, foreign_key: true
      t.references :soup, null: false, foreign_key: true

      t.timestamps
    end
  end
end

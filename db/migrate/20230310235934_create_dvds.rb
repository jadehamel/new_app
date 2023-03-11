class CreateDvds < ActiveRecord::Migration[6.1]
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :year
      t.string :number
      t.string :description
      t.string :image
      t.string :link

      t.timestamps
    end
  end
end

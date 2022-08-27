class Farms < ActiveRecord::Migration[6.1]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :field
      t.string :season
      t.integer :duration
      t.text :note
    end
  end
end

class CreateFarmFields < ActiveRecord::Migration[6.1]
  def change
    create_table :farm_fields do |t|
      t.string :farm
      t.string :name
      t.text :note
      # t.integer :cow_id
    end
  end
end

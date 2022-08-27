class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :farm
      t.string :name
      t.integer :cow_id
      t.text :note
    end
  end
end

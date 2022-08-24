class CreateCows < ActiveRecord::Migration[6.1]
  def change
    create_table :cows do |t|
      t.string :name
      # t.integer :calf_id
      t.references :mother, foreign_key: {to_table: :cows }
      # t.string :gender
      # t.string :category
      # t.integer :age
      # t.date :birthday
      # t.boolean :living
      # t.text :note
    end
  end
end

class CreateBreeds < ActiveRecord::Migration[8.1]
  def change
    create_table :breeds do |t|
      t.string :name
      t.text :description
      t.integer :popularity
      t.float :min_height
      t.float :max_height
      t.float :min_weight
      t.float :max_weight
      t.integer :min_expectancy
      t.integer :max_expectancy
      t.string :grooming_category
      t.string :shedding_category
      t.string :energy_category
      t.string :trainability_category
      t.string :demeanor_category
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end

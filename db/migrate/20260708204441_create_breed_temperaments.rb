class CreateBreedTemperaments < ActiveRecord::Migration[8.1]
  def change
    create_table :breed_temperaments do |t|
      t.references :breed, null: false, foreign_key: true
      t.references :temperament, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateKlasses < ActiveRecord::Migration[7.1]
  def change
    create_table :klasses do |t|
      t.string :name
      t.integer :period
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end

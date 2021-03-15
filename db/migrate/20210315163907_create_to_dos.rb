class CreateToDos < ActiveRecord::Migration[6.0]
  def change
    create_table :to_dos do |t|
      t.string :category
      t.string :name
      t.text :description
      t.boolean :done
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end

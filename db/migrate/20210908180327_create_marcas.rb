class CreateMarcas < ActiveRecord::Migration[5.2]
  def change
    create_table :marcas do |t|
      t.string :nombre, null: false
      t.boolean :activa, null: false
      t.timestamps
    end
  end
end

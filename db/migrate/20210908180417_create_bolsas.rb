class CreateBolsas < ActiveRecord::Migration[5.2]
  def change
    create_table :bolsas do |t|
      t.string :nombre, null: false
      t.string :codigo, null: false
      t.text :descripcion
      t.timestamps
    end
  end
end

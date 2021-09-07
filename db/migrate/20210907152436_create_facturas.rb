class CreateFacturas < ActiveRecord::Migration[5.2]
  def change
    create_table :facturas do |t|
      t.date :fecha, null: false
      t.float :total, null: false
      t.boolean :anulada, null: false
      t.references :cliente, null: false, index: true 
      t.timestamps
    end
  end
end

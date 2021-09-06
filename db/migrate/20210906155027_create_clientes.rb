class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nombre, null: false
      t.string :nit, null: false
      t.string :direccion
      t.string :telefono
      t.timestamps
    end
  end
end

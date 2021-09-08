# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_08_180417) do

  create_table "bolsas", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "codigo", null: false
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre", null: false
    t.string "nit", null: false
    t.string "direccion"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.date "fecha", null: false
    t.float "total", null: false
    t.boolean "anulada", null: false
    t.integer "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_facturas_on_cliente_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nombre", null: false
    t.boolean "activa", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer "cantidad", null: false
    t.float "precio", null: false
    t.boolean "activo", null: false
    t.integer "bolsa_id", null: false
    t.integer "marca_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bolsa_id"], name: "index_productos_on_bolsa_id"
    t.index ["marca_id"], name: "index_productos_on_marca_id"
  end

end

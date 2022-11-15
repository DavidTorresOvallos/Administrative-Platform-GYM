# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_14_133942) do
  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.string "apellido_uno"
    t.string "apellido_dos"
    t.integer "tipo_documento"
    t.date "fecha_nacimiento"
    t.integer "peso"
    t.integer "altura"
    t.string "id_clientable_type", null: false
    t.integer "id_clientable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["id_clientable_type", "id_clientable_id"], name: "index_clients_on_id_clientable"
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "nombre"
    t.string "apellido_uno"
    t.string "apellido_dos"
    t.integer "tipo_documento"
    t.string "num_documento"
    t.date "fecha_nacimiento"
    t.date "fecha_ingreso"
    t.string "id_empleatable_type", null: false
    t.integer "id_empleatable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["id_empleatable_type", "id_empleatable_id"], name: "index_employees_on_id_empleatable"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "gyms", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string "tipo_maquina"
    t.string "grupo_muscular"
    t.date "fecha_compra"
    t.decimal "costo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gym_id", null: false
    t.index ["gym_id"], name: "index_inventories_on_gym_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "monto"
    t.datetime "fecha"
    t.string "detalle"
    t.decimal "iva"
    t.decimal "valor"
    t.string "id_recibtable_type", null: false
    t.integer "id_recibtable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_recibtable_type", "id_recibtable_id"], name: "index_invoices_on_id_recibtable"
  end

  create_table "plans", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_inicial"
    t.date "fecha_final"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gym_id", null: false
    t.index ["gym_id"], name: "index_plans_on_gym_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "id_productable_type", null: false
    t.integer "id_productable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_productable_type", "id_productable_id"], name: "index_products_on_id_productable"
  end

  create_table "roles", force: :cascade do |t|
    t.string "cargo"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inventories", "gyms"
  add_foreign_key "plans", "gyms"
end

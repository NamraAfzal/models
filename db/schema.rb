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

ActiveRecord::Schema[7.1].define(version: 2024_10_23_103536) do
  create_table "categorization", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
    t.index ["customer_id", "product_id"], name: "index_categorization_on_customer_id_and_product_id"
    t.index ["product_id", "customer_id"], name: "index_categorization_on_product_id_and_customer_id"
  end

  create_table "disteributors", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "price", precision: 5, scale: 2
    t.string "supplier_type", null: false
    t.integer "supplier_id", null: false
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_products_on_student_id"
    t.index ["supplier_type", "supplier_id"], name: "index_products_on_supplier"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.string "part_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id", null: false
    t.index ["student_id"], name: "index_schools_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "gmail"
    t.integer "age"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "part_number"
    t.decimal "fees"
    t.string "address"
    t.index ["part_number"], name: "index_students_on_part_number"
  end

  add_foreign_key "products", "students"
  add_foreign_key "schools", "students"
end

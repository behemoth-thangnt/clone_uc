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

ActiveRecord::Schema[7.0].define(version: 0) do
  create_table "active_storage_attachments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_roles", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "position", default: 1, null: false
    t.integer "admins_count", default: 0, null: false
    t.integer "lock_version", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "idx_admin_roles_on_name", unique: true
  end

  create_table "admins", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.bigint "admin_role_id", default: 1, null: false
    t.bigint "lock_version"
    t.string "name", default: "", comment: "姓名(セイメイ)"
    t.string "name01"
    t.string "name02"
    t.string "kana", default: "", comment: "カナ"
    t.string "kana01"
    t.string "kana02"
    t.string "tel", default: "", comment: "電話番号"
    t.string "tel01"
    t.string "tel02"
    t.string "tel03"
    t.string "fax", default: "", comment: "FAX"
    t.string "fax01"
    t.string "fax02"
    t.string "fax03"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_role_id"], name: "idx_admins_on_role"
    t.index ["email", "deleted_at"], name: "idx_admins_on_email_deleted_at", unique: true
  end

  create_table "customer", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.bigint "lock_version"
    t.string "name", default: "", comment: "姓名(セイメイ)"
    t.string "name01"
    t.string "name02"
    t.string "kana", default: "", comment: "カナ"
    t.string "kana01"
    t.string "kana02"
    t.string "tel", default: "", comment: "電話番号"
    t.string "tel01"
    t.string "tel02"
    t.string "tel03"
    t.string "fax", default: "", comment: "FAX"
    t.string "fax01"
    t.string "fax02"
    t.string "fax03"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email", "deleted_at"], name: "idx_customers_on_email_deleted_at", unique: true
  end

  create_table "customers", charset: "utf8mb4", collation: "utf8mb4_unicode_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.bigint "lock_version"
    t.string "name", default: "", comment: "姓名(セイメイ)"
    t.string "name01"
    t.string "name02"
    t.string "kana", default: "", comment: "カナ"
    t.string "kana01"
    t.string "kana02"
    t.string "tel", default: "", comment: "電話番号"
    t.string "tel01"
    t.string "tel02"
    t.string "tel03"
    t.string "fax", default: "", comment: "FAX"
    t.string "fax01"
    t.string "fax02"
    t.string "fax03"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email", "deleted_at"], name: "idx_customers_on_email_deleted_at", unique: true
  end

end

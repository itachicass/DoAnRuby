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

ActiveRecord::Schema.define(version: 2020_09_09_101550) do

  create_table "books", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tensach"
    t.string "tacgia"
    t.string "nxb"
    t.string "theloai"
    t.integer "dongia"
    t.integer "soluong"
    t.string "hinhanh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "mota", null: false
  end

  create_table "customs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tenkh"
    t.string "sdt"
    t.date "ngsinh"
    t.string "gioitinh"
    t.string "email"
    t.string "diachi"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "masach"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "sohd"
    t.integer "masach"
    t.integer "makm"
    t.integer "dongia"
    t.integer "soluong"
    t.integer "thanhtien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "makh"
    t.date "ngaymua"
    t.integer "tongtien"
    t.string "tinhtrang"
    t.string "ghichu"
    t.timestamp "created_at", default: -> { "current_timestamp()" }, null: false
    t.timestamp "updated_at", default: -> { "current_timestamp()" }, null: false
  end

  create_table "sales", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "phantram"
    t.date "thoigianBD"
    t.date "thoigianKT"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.string "gender", null: false
    t.string "address", null: false
    t.datetime "date_of_birth", null: false
    t.string "phone_number", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

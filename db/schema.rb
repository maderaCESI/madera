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

ActiveRecord::Schema.define(version: 20170201075548) do

  create_table "calculation_rules", force: :cascade do |t|
    t.string "woodFrameConception"
  end

  create_table "cctps", force: :cascade do |t|
    t.string "cctpcharacteristics"
  end

  create_table "claddings", force: :cascade do |t|
    t.integer "thicknessCladdings"
  end

  create_table "clients", force: :cascade do |t|
    t.string  "clientName"
    t.string  "firstNameClient"
    t.integer "streetNumber"
    t.string  "streetName"
    t.integer "pc"
    t.string  "cityName"
    t.string  "phonenumber"
    t.string  "email"
  end

  create_table "components", force: :cascade do |t|
    t.string  "componentName"
    t.string  "componentNature"
    t.float   "componentSection"
    t.float   "componentThickness"
    t.float   "componentLength"
    t.float   "componentWidth"
    t.integer "family_component_id"
    t.integer "provider_id"
    t.integer "unite_use_id"
    t.index ["family_component_id"], name: "index_components_on_family_component_id"
    t.index ["provider_id"], name: "index_components_on_provider_id"
    t.index ["unite_use_id"], name: "index_components_on_unite_use_id"
  end

  create_table "components_modulus", id: false, force: :cascade do |t|
    t.integer "component_id", null: false
    t.integer "modulu_id",    null: false
  end

  create_table "family_components", force: :cascade do |t|
    t.string "familyComponentName"
  end

  create_table "insulatings", force: :cascade do |t|
    t.string "insulatingName"
    t.float  "insulatingThickness"
  end

  create_table "modulus", force: :cascade do |t|
    t.string  "modulusName"
    t.string  "modulusNature"
    t.float   "modulusHeight"
    t.float   "modulusLength"
    t.integer "mdSection"
    t.float   "mdHeight"
    t.float   "mdLength"
    t.integer "maSection"
    t.float   "maHeight"
    t.float   "maLength"
    t.integer "maeSection"
    t.float   "maeHeight"
    t.float   "maeLength"
    t.integer "masSection"
    t.float   "masHeight"
    t.float   "masLength"
    t.integer "insulating_id"
    t.integer "cladding_id"
    t.integer "unite_use_id"
    t.index ["cladding_id"], name: "index_modulus_on_cladding_id"
    t.index ["insulating_id"], name: "index_modulus_on_insulating_id"
    t.index ["unite_use_id"], name: "index_modulus_on_unite_use_id"
  end

  create_table "modulus_components", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modulus_scale_modular_houses", id: false, force: :cascade do |t|
    t.integer "modulu_id"
    t.integer "scale_modular_house_id"
    t.index ["modulu_id"], name: "index_modulus_scale_modular_houses_on_modulu_id"
    t.index ["scale_modular_house_id"], name: "index_modulus_scale_modular_houses_on_scale_modular_house_id"
  end

  create_table "order_quote_clients", force: :cascade do |t|
    t.string  "stateOrder"
    t.float   "priceTotal"
    t.string  "stateExpedition"
    t.integer "payment_id"
    t.integer "project_modular_house_id"
    t.index ["payment_id"], name: "index_order_quote_clients_on_payment_id"
    t.index ["project_modular_house_id"], name: "index_order_quote_clients_on_project_modular_house_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string  "paymentStep"
    t.integer "sumToUnlock"
  end

  create_table "project_modular_houses", force: :cascade do |t|
    t.string  "projectName"
    t.integer "client_id"
    t.integer "user_id"
    t.integer "scale_modular_house_id"
    t.index ["client_id"], name: "index_project_modular_houses_on_client_id"
    t.index ["scale_modular_house_id"], name: "index_project_modular_houses_on_scale_modular_house_id"
    t.index ["user_id"], name: "index_project_modular_houses_on_user_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string  "providerName"
    t.integer "streetNumber"
    t.string  "streetName"
    t.integer "pc"
    t.string  "cityName"
    t.string  "phonenumber"
    t.string  "email"
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scale_modular_houses", force: :cascade do |t|
    t.string  "scaleName"
    t.string  "exteriorFinish"
    t.string  "coverType"
    t.string  "woodWorkingQuality"
    t.integer "cctp_id"
    t.integer "calculation_rule_id"
    t.index ["calculation_rule_id"], name: "index_scale_modular_houses_on_calculation_rule_id"
    t.index ["cctp_id"], name: "index_scale_modular_houses_on_cctp_id"
  end

  create_table "unite_uses", force: :cascade do |t|
    t.string "unitUseName"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname",              default: "", null: false
    t.string   "lastname",               default: "", null: false
    t.string   "role",                   default: "", null: false
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end


ActiveRecord::Schema[7.0].define(version: 2022_09_01_075057) do
  create_table "praktikanter", force: :cascade do |t|
    t.string "förnamn"
    t.string "efternamn"
    t.string "email"
    t.string "telefon"
    t.string "linkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
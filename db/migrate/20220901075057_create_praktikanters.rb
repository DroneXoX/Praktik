class CreatePraktikanters < ActiveRecord::Migration[7.0]
  def change
    create_table :praktikanters do |t|
      t.string :first_förnamn
      t.string :efternamn
      t.string :email
      t.string :telefon
      t.string :linkedin

      t.timestamps
    end
  end
end

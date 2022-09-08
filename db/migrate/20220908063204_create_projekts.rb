class CreateProjekts < ActiveRecord::Migration[7.0]
  def change
    create_table :projekts do |t|
      t.string :namn
      t.text :beskrivning
      t.string :ägare
      t.string :status

      t.timestamps
    end
  end
end

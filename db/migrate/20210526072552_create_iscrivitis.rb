class CreateIscrivitis < ActiveRecord::Migration[6.1]
  def change
    create_table :iscrivitis do |t|
      t.string :cognome
      t.string :nome
      t.string :email
      t.string :cellulare
      t.integer :età
      t.strnig :richiesta

      t.timestamps
    end
  end
end

class CreateCavallis < ActiveRecord::Migration[6.1]
  def change
    create_table :cavallis do |t|
      t.string :nome
      t.string :descrizione
      t.integer :età

      t.timestamps
    end
  end
end

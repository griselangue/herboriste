class CreatePlantes < ActiveRecord::Migration[5.1]
  def change
    create_table :plantes do |t|
      t.string :nomCommun
      t.string :nomScientifique
      t.text :description
      t.string :dimension
      t.string :fleur
      t.string :tige
      t.string :feuille
      t.string :racine
      t.string :fruit

      t.timestamps
    end
  end
end

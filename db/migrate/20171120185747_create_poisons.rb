class CreatePoisons < ActiveRecord::Migration[5.1]
  def change
    create_table :poisons do |t|
      t.string :action
      t.string :medium
      t.string :toxicite
      t.string :partiePlante
      t.text :infoComplementaire
      t.belongs_to :plante, foreign_key: true

      t.timestamps
    end
  end
end

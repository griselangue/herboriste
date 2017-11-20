class CreateRemedes < ActiveRecord::Migration[5.1]
  def change
    create_table :remedes do |t|
      t.string :modeAdministration
      t.string :partiePlante
      t.string :maux
      t.text :infoComplementaire
      t.belongs_to :plante, foreign_key: true

      t.timestamps
    end
  end
end

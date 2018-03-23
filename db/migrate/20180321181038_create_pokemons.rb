class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.belongs_to :trainer, index: true
      t.string :name
      t.integer :level
      t.integer :ndex
      t.timestamps
    end
  end
end

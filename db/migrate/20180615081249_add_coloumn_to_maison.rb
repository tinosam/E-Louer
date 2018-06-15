class AddColoumnToMaison < ActiveRecord::Migration[5.2]
  def change
  	add_column :maisons, :lieux, :string
  	add_column :maisons, :equipement, :string
  	add_column :maisons, :duree, :string

  end
end

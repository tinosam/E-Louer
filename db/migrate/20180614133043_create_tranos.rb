class CreateTranos < ActiveRecord::Migration[5.2]
  def change
		create_table :tranos do |t|
			t.integer :mpanera_id
			t.text :detail
      t.boolean :disponible
      t.integer :prix
			t.timestamps
		end
	end
end

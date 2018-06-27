class CreateMaisons < ActiveRecord::Migration[5.2]
	def change
		create_table :maisons do |t|
			t.string :title
			t.integer :agent_id
			t.text :detail
			t.boolean :disponible
			t.integer :prix
			t.timestamps
		end
	end
end

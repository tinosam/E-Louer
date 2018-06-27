class CreateCins < ActiveRecord::Migration[5.2]
  def change
    create_table :cins do |t|
    	t.integer :user_id
    	t.integer :agent_id
    	t.string :image

      t.timestamps
    end
  end
end

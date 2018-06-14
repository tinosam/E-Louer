class AddFullNameCinNumber < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :fullname, :string
  	add_column :users, :number, :string
  	add_column :users, :cin, :string

  	add_column :agents, :fullname, :string
  	add_column :agents, :number, :string
  	add_column :agents, :cin, :string
  end
end

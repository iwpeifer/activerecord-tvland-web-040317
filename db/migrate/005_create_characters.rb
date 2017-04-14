class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.string :show_id
      t.string :actor_id
      t.string :catchphrase

      add_column :networks, :day, :string
      add_column :networks, :season, :string
      add_column :networks, :genre, :string
    end
  end
end
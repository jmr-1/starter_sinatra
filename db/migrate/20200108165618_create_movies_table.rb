class CreateMoviesTable < ActiveRecord::Migration[5.2]
  def change

    create_table :movies do |t|
      t.string :title
      t.integer :length
      t.string :genre 
    end 
  end
end

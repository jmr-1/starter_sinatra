class CreateActorsTable < ActiveRecord::Migration[5.2]
  def change

    create_table :actors do |t|
      t.string :name 
      t.integer :age 
      t.integer :experience
      

    end 
  end
end

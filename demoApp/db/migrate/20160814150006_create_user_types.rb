class CreateUserTypes < ActiveRecord::Migration
  def up
    create_table :user_types do |t|
      t.string :name, :null=>false
      t.string :description
      
      t.timestamps null: false
    end
  end
  def down
  	drop_table :user_types
  end
end

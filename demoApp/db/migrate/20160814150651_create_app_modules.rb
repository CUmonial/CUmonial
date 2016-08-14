class CreateAppModules < ActiveRecord::Migration
  def up
    create_table :app_modules do |t|
      t.string :name
      t.string :label

      t.timestamps null: false
    end
  end

  def down
  	drop_table :app_modules
  end
end

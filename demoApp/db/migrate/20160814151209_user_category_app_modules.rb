class UserCategoryAppModules < ActiveRecord::Migration
  def up
  	create_table :user_category_app_modules do |t|
      t.integer :user_category_id
      t.integer :app_module_id
      
      t.timestamps null: false
    end
    add_foreign_key :user_category_app_modules, :user_categories
    add_foreign_key :user_category_app_modules, :app_modules
  end

  def down
  	drop_table :user_category_app_modules
  end
end

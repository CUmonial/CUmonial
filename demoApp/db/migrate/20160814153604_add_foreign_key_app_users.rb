class AddForeignKeyAppUsers < ActiveRecord::Migration
  def change
  	add_foreign_key :app_users, :user_types
  	add_foreign_key :app_users, :user_categories
  end
end

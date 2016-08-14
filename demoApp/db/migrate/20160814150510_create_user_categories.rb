class CreateUserCategories < ActiveRecord::Migration
  def up
    create_table :user_categories do |t|
      t.string :name,       null: false
      t.string :description
      t.integer :user_type_id
      t.timestamps null: false
    end

    add_foreign_key :user_categories, :user_types, on_delete: :cascade
  end

  def down
      drop_table :user_categories
  end
end

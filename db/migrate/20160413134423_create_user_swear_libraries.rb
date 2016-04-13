class CreateUserSwearLibraries < ActiveRecord::Migration
  def change
    create_table :user_swear_libraries do |t|
      t.integer :user_id
      t.string :user_swear

      t.timestamps null: false
    end
  end
end

class CreateSwearLibraries < ActiveRecord::Migration
  def change
    create_table :swear_libraries do |t|
      t.string :swear

      t.timestamps null: false
    end
  end
end

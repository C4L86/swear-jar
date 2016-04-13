class CreateSwearCosts < ActiveRecord::Migration
  def change
    create_table :swear_costs do |t|
      t.integer :cost

      t.timestamps null: false
    end
  end
end

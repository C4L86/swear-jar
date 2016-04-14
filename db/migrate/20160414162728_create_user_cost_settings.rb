class CreateUserCostSettings < ActiveRecord::Migration
  def change
    create_table :user_cost_settings do |t|
      t.integer :user_id
      t.integer :swear_cost_id
      t.integer :outbound_account_id
      t.integer :inbound_account_id

      t.timestamps null: false
    end
  end
end

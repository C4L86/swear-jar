class CreateSwearLogs < ActiveRecord::Migration
  def change
    create_table :swear_logs do |t|
      t.integer :user_id
      t.integer :swear_id
      t.integer :user_swear_id
      t.integer :swear_cost_id
      t.integer :user_bank_account_id
      t.integer :donor_account_id
      t.boolean :route_or_not

      t.timestamps null: false
    end
  end
end

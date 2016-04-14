class CreateInboundAccounts < ActiveRecord::Migration
  def change
    create_table :inbound_accounts do |t|
      t.integer :user_id
      t.integer :user_bank_account_id
      t.integer :donor_account_id

      t.timestamps null: false
    end
  end
end

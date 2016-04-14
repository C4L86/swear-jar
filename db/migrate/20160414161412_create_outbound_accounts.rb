class CreateOutboundAccounts < ActiveRecord::Migration
  def change
    create_table :outbound_accounts do |t|
      t.integer :user_bank_account_id

      t.timestamps null: false
    end
  end
end

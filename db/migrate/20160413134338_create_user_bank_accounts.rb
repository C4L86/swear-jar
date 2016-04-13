class CreateUserBankAccounts < ActiveRecord::Migration
  def change
    create_table :user_bank_accounts do |t|
      t.integer :user_id
      t.integer :account_number
      t.integer :balance

      t.timestamps null: false
    end
  end
end

class CreateDonorAccounts < ActiveRecord::Migration
  def change
    create_table :donor_accounts do |t|
      t.integer :account_number

      t.timestamps null: false
    end
  end
end

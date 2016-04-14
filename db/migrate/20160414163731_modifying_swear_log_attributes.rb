class ModifyingSwearLogAttributes < ActiveRecord::Migration
  def change
    remove_column :swear_logs, :swear_cost_id
    remove_column :swear_logs, :user_bank_account_id
    remove_column :swear_logs, :donor_account_id
    add_column    :swear_logs, :user_cost_setting_id, :integer
  end
end

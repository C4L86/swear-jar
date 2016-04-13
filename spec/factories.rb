FactoryGirl.define do
  factory :user do
    
  end
  factory :user_swear_library do
    user_id 1
    user_swear "MyString"
  end
  factory :swear_library do
    swear "MyString"
  end
  factory :swear_cost do
    cost 1
  end
  factory :swear_log do
    user_id 1
    swear_id 1
    user_swear_id 1
    swear_cost_id 1
    user_bank_account_id 1
    donor_account_id 1
    route_or_not false
  end
  factory :donor_account do
    account_number 1
  end
  factory :user_bank_account do
    user_id 1
    account_number 1
    balance 1
  end
end

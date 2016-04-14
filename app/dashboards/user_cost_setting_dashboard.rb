require "administrate/base_dashboard"

class UserCostSettingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    swear_cost_id: Field::Number,
    outbound_account_id: Field::Number,
    inbound_account_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :user_id,
    :swear_cost_id,
    :outbound_account_id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :swear_cost_id,
    :outbound_account_id,
    :inbound_account_id,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :swear_cost_id,
    :outbound_account_id,
    :inbound_account_id,
  ]

  # Overwrite this method to customize how user cost settings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user_cost_setting)
  #   "UserCostSetting ##{user_cost_setting.id}"
  # end
end

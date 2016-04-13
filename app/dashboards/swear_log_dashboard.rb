require "administrate/base_dashboard"

class SwearLogDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    user_id: Field::Number,
    swear_id: Field::Number,
    user_swear_id: Field::Number,
    swear_cost_id: Field::Number,
    user_bank_account_id: Field::Number,
    donor_account_id: Field::Number,
    route_or_not: Field::Boolean,
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
    :swear_id,
    :user_swear_id,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :user_id,
    :swear_id,
    :user_swear_id,
    :swear_cost_id,
    :user_bank_account_id,
    :donor_account_id,
    :route_or_not,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user_id,
    :swear_id,
    :user_swear_id,
    :swear_cost_id,
    :user_bank_account_id,
    :donor_account_id,
    :route_or_not,
  ]

  # Overwrite this method to customize how swear logs are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(swear_log)
  #   "SwearLog ##{swear_log.id}"
  # end
end

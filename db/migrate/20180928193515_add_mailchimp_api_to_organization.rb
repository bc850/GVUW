class AddMailchimpApiToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :mailchimp_api, :string
  end
end

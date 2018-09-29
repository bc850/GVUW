class AddMandrillApiToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :mandrill_api, :string
  end
end

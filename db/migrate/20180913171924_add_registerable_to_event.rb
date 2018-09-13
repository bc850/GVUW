class AddRegisterableToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :registerable, :boolean
  end
end

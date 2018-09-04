class AddNewsToAuthor < ActiveRecord::Migration[5.2]
  def change
    add_reference :news, :author, index: true, foreign_key: true
  end
end

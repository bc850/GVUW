class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.string :description
      t.string :slug

      t.timestamps
    end
    add_index :news, :slug, unique: true
  end
end

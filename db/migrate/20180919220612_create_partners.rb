class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.text :body
      t.string :slug
      t.boolean :published
      t.datetime :published_at
      t.bigint :author_id

      t.timestamps
    end
  end
end

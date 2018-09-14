class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :banner_image_url
      t.string :description
      t.text :body
      t.string :slug
      t.bigint :author_id
      t.boolean :published
      t.datetime :published_at
      t.boolean :featured

      t.timestamps
    end
  end
end

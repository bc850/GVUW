class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.integer :year
      t.decimal :total
      t.decimal :percentage
      t.text :body
      t.string :slug
      t.bigint :author_id
      t.boolean :published
      t.datetime :published_at

      t.timestamps
    end
  end
end

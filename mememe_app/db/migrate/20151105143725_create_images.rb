class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.string :photo_url
      t.references :category
      t.references :user

      t.timestamps null: false
    end
  end
end

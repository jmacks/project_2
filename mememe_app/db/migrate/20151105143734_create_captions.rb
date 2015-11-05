class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :text
      t.references :user
      t.references :image

      t.timestamps null: false
    end
  end
end

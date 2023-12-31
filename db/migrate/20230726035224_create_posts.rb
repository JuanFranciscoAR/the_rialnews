class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.string :title
      t.text :description
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

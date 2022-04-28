class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :image, null: false
      t.string :content
      t.boolean :active, default: true
      t.references :account
      t.timestamps
    end
  end
end

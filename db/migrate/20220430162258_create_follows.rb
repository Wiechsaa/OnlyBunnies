class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.references :follower, references: :account
      t.references :following, references: :account
      t.timestamps
    end
  end
end

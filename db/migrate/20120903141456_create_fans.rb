class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    
    add_index :fans, :follower_id
    add_index :fans, :followed_id
    add_index :fans, [:follower_id, :followed_id], unique: true
  end
end

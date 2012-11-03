class AddInstagramLinkToUsers < ActiveRecord::Migration
  def change
    add_column :users, :instagram_link, :string, after: :fb_link
  end
end

class RemoveFlickrLinkFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :flickr_link
  end
end

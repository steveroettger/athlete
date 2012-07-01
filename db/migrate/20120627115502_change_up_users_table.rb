class ChangeUpUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string, after: :name
    add_column :users, :last_name, :string, after: :first_name
    add_column :users, :username, :string, after: :last_name
    add_column :users, :email, :string, after: :username
    add_column :users, :gender, :string, after: :email
    add_column :users, :location, :string, after: :gender
    add_column :users, :high_school, :string, after: :location
    add_column :users, :profile_image, :binary, after: :high_school
    add_column :users, :fb_link, :string, after: :profile_image
    add_column :users, :flickr_link, :string, after: :fb_link
    add_column :users, :youtube_link, :string, after: :flickr_link
    add_column :users, :goal, :string, after: :youtube_link
      
  end
end

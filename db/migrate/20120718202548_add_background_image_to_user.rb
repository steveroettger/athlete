class AddBackgroundImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :background_image, :string, after: :profile_image
  end
end

class AddProfilePositionXandYToUsers < ActiveRecord::Migration
  def change
    add_column :users, :position_x, :string, after: :highlight_three
    add_column :users, :position_y, :string, after: :position_x
  end
end

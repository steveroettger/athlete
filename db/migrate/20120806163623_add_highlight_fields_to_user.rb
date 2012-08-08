class AddHighlightFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :highlight_one, :string, after: :goal
    add_column :users, :highlight_two, :string, after: :highlight_one
    add_column :users, :highlight_three, :string, after: :highlight_two
  end
end

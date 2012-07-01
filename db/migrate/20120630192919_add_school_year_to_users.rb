class AddSchoolYearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_year, :string, after: :gender
  end
end

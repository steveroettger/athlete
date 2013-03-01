class CreateSportsUsers < ActiveRecord::Migration
  def change
    create_table :sports_users do |t|
      t.references :user
      t.references :sport
      
      t.timestamps
    end
  end
end

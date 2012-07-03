class CreateMaleSports < ActiveRecord::Migration
  def change
    create_table :male_sports do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end

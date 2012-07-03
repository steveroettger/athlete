class CreateFemaleSports < ActiveRecord::Migration
  def change
    create_table :female_sports do |t|
      t.string :title
      t.string :image_url

      t.timestamps
    end
  end
end

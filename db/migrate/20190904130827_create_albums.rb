class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :price
      t.string :genre
      t.integer :rating
      t.string :picture
      t.integer :view
      t.timestamps
    end
  end
end

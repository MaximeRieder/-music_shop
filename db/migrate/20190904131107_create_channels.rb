class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name
      t.integer :rating
      t.string :picture
      t.timestamps
    end
  end
end

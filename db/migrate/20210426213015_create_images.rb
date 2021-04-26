class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :image_id
      t.string :image_name
      t.string :image_path
      t.string :image_size

      t.timestamps
    end
  end
end

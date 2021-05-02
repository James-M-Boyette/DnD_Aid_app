class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :image_id
      t.string :image_name
      t.string :image_path
      t.string :image_size
      t.string :image_obj

      t.timestamps
    end
  end
end

# image_id
# image_name
# image_path
# image_size
# image_obj

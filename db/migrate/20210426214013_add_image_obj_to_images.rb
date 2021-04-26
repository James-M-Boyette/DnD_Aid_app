class AddImageObjToImages < ActiveRecord::Migration[6.1]
  def change
    add_column :images, :image_obj, :string
  end
end

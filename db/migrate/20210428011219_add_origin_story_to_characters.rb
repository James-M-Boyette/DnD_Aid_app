class AddOriginStoryToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :origin_story, :text
  end
end

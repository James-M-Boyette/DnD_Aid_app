class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :user_id
      t.string :cfirstname
      t.string :cmiddlename
      t.string :clastname
      t.string :raceid
      t.string :classid
      t.string :alignmentid
      t.string :languageid
      t.string :inventoryid
      t.text :origin_story
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :healthmax
      t.integer :healthcurrent
      t.integer :healthtemp
      t.integer :speed

      t.timestamps
    end
  end
end

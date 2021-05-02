class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :desc
      t.string :rarity
      t.string :speakers
      t.string :script

      t.timestamps
    end
  end
end

# id
# name
# desc
# rarity
# typical_speakers
# script

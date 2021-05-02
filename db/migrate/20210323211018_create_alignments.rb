class CreateAlignments < ActiveRecord::Migration[6.1]
  def change
    create_table :alignments do |t|
      t.string :name
      t.string :abbreviation
      t.string :desc
      t.string :imgurl

      t.timestamps
    end
  end
end

# name
# abbreviation
# desc
# imgurl
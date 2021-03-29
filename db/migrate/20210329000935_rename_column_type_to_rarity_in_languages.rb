class RenameColumnTypeToRarityInLanguages < ActiveRecord::Migration[6.1]
  def change
    rename_column :languages, :type, :rarity
  end
end

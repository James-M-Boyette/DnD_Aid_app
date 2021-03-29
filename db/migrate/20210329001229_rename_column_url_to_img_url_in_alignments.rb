class RenameColumnUrlToImgUrlInAlignments < ActiveRecord::Migration[6.1]
  def change
    rename_column :alignments, :url, :imgurl
  end
end

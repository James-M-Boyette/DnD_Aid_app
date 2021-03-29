class CreateLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :desc
      t.string :type
      t.string :typcial_speakers
      t.string :script

      t.timestamps
    end
  end
end

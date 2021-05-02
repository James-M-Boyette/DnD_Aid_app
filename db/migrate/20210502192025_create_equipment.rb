class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.decimal :cost
      t.string :currency
      t.decimal :weight
      t.text :desc
      t.string :equipment_category
      t.string :gear_category
      # damage (positive is healing, negative is damage)
      # dot (damage over time - the damage only, bc something might do 6 damage initially, and 2 bleeding for 3 turns ... so you'd need three columns)
      # duration (# of turns)

      t.timestamps
    end
  end
end

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
      name
      equipment_category
      gear_category
      tool_category
      vehicle_category
      carrying_capacity
      weapon_category
      weapon_range
      range_category
      damage_dice
      damage_category
      property1
      property2
      property3
      property4
      armor_category
      armor_base
      armor_dex_bonus
      armor_max_bonus
      str_minimum
      stealth_disadvantage
      cost
      currency
      weight
      speed_amount
      speed_unit
      desc
      # damage (positive is healing, negative is damage)
      # dot (damage over time - the damage only, bc something might do 6 damage initially, and 2 bleeding for 3 turns ... so you'd need three columns)
      # duration (# of turns)

      t.timestamps
    end
  end
end

# name
# equipment_category
# gear_category
# tool_category
# vehicle_category
# carrying_capacity
# weapon_category
# weapon_range
# range_category
# damage_dice
# damage_category
# property1
# property2
# property3
# property4
# armor_category
# armor_base
# armor_dex_bonus
# armor_max_bonus
# str_minimum
# stealth_disadvantage
# cost
# currency
# weight
# speed_amount
# speed_unit
# desc

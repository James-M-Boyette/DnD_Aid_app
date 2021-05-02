class CreateEquipment < ActiveRecord::Migration[6.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.decimal :cost # 400
      t.string :currency #gp ... gold pieces?
      t.decimal :weight # 20
      t.text :desc
      t.string :equipment_category
      t.string :gear_category
      t.string :tool_category
      t.string :vehicle_category
      t.string :carrying_capacity # 480 lbs(for horse)
      t.string :weapon_category # Martial (for a rapier)
      t.string :weapon_range # Melee
      t.string :range_category # Martial Melee
      t.string :damage_dice # 1d8
      t.string :damage_category # piercing
      t.decimal :weapon_range_normal # 5
      t.decimal :weapon_range_long # null
      t.string :property1
      t.string :property2
      t.string :property3
      t.string :property4
      t.string :property5
      t.string :armor_category # medium (for breastplate)
      t.decimal :armor_base # 14
      t.string :armor_dex_bonus # true
      t.decimal :armor_max_bonus # 2
      t.decimal :str_minimum # 0
      t.string :stealth_disadvantage # false
      t.string :speed_amount # 60 (for a horse)
      t.string :speed_unit # ft/round
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

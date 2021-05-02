## Dump the JSON form of the end-point route's hash into an instanced var
@web_resp = HTTP.get("https://www.dnd5eapi.co/api/equipment/").to_s
## Dump the parsed/converted-to-ruby hash version into a new variable we can run through
dnd_category = JSON.parse(@web_resp)
## Create a var+array we can dump our desired entries into
entries = []

## Loop through this has to find the index-routes they wrote ...
dnd_category["results"].each do |entry|
  ## and dump what we get from the end-point route + the index url end into an instace variable
  @web_resp2 = HTTP.get("https://www.dnd5eapi.co/api/equipment/" + entry["index"]).to_s
  ## add a rubified version of the above to our array
  entries << JSON.parse(@web_resp2)
end

## Loop through our rubified array and create a new entry for each entry, saving the values associated with our keys into the new instance ... and then store that instanced class as a row in our db table
entries.each do |entry|
  # Check to see if endpoint is read correctly
  puts entry["name"]
  puts entry["equipment_category"]["name"]
  puts entry["gear_category"]["name"]
  puts entry["tool_category"]
  puts entry["vehicle_category"]
  puts entry["capacity"]
  puts entry["weapon_category"]
  puts entry["weapon_range"]
  puts entry["category_range"]
  puts entry["damage"]["damage_dice"]
  puts entry["damage"]["damage_type"]["name"]
  puts entry["range"]["normal"]
  puts entry["range"]["long"]
  puts entry["properties"][1]["name"]
  puts entry["properties"][2]["name"]
  puts entry["properties"][3]["name"]
  puts entry["properties"][4]["name"]
  puts entry["properties"][5]["name"]

  puts entry["armor_category"]
  puts entry["armor_class"]["base"]
  puts entry["armor_class"]["dex_bonus"]
  puts entry["armor_class"]["max_bonus"]
  puts entry["str_minimum"]
  puts entry["stealth_disadvantage"]

  #cost = integer
  puts entry["cost"]["quantity"]
  puts entry["cost"]["unit"]
  #weight = integer
  puts entry["weight"]
  puts entry["speed"]["quantity"]
  puts entry["speed"]["unit"]
  puts entry["desc"]

  puts entry
  Equipment.create!(
    name: entry["name"],
    equipment_category: entry["equipment_category"]["name"],
    gear_category: entry["gear_category"]["name"],
    tool_category: entry["tool_category"],
    vehicle_category: entry["vehicle_category"],
    carrying_capacity: entry["capacity"],
    weapon_category: entry["weapon_category"],
    weapon_range: entry["weapon_range"],
    range_category: entry["category_range"],
    damage_dice: entry["damage"]["damage_dice"],
    damage_category: entry["damage"]["damage_type"]["name"],
    property1: entry["properties"][1]["name"],
    property2: entry["properties"][2]["name"],
    property3: entry["properties"][3]["name"],
    property4: entry["properties"][4]["name"],
    armor_category: entry["armor_category"],
    armor_base: entry["armor_class"]["base"],
    armor_dex_bonus: entry["armor_class"]["dex_bonus"],
    armor_max_bonus: entry["armor_class"]["max_bonus"],
    str_minimum: entry["str_minimum"],
    stealth_disadvantage: entry["stealth_disadvantage"],

    #cost = integer
    cost: entry["cost"]["quantity"],
    currency: entry["cost"]["unit"],
    #weight = integer
    weight: entry["weight"],
    speed_amount: entry["speed"]["quantity"],
    speed_unit: entry["speed"]["unit"],
    desc: entry["desc"],

    # imgurl: "",
  )
end

#This is what rails is getting back from the link I've provided - the hash ... so my instinct would be to say that I've got an array or hash ref wrong above? But i can't find it ...

# { "index" => "abacus",
#   "name" => "Abacus",
#   "equipment_category" => { "index" => "adventuring-gear",
#                             "name" => "Adventuring Gear",
#                             "url" => "/api/equipment-categories/adventuring-gear" },
#   "gear_category" => { "index" => "standard-gear",
#                        "name" => "Standard Gear",
#                        "url" => "/api/equipment-categories/standard-gear" },
#   "cost" => { "quantity" => 2,
#               "unit" => "gp" },
#   "weight" => 2,
#   "url" => "/api/equipment/abacus" } #don't care about this

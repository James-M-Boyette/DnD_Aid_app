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
  #cost = integer
  puts entry["cost"]["quantity"]
  puts entry["cost"]["unit"]
  #weight = integer
  puts entry["weight"]
  puts entry["desc"]
  puts entry
  Equipment.create!(
    name: entry["name"],
    equipment_category: entry["equipment_category"]["name"],
    gear_category: entry["gear_category"]["name"],
    #cost = integer
    cost: entry["cost"]["quantity"],
    currency: entry["cost"]["unit"],
    #weight = integer
    weight: entry["weight"],
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

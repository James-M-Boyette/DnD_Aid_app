#this is the back-up file for my seeds logic
#MUST COPY SEED LOGIC TO HERE BEFORE RUNNING DB-T0-SEED BACKUP

require "http"

## !! Alignment Table rip !! ##

## Dump the JSON form of the end-point route's hash into an instanced var
@web_resp = HTTP.get("https://www.dnd5eapi.co/api/alignments/").to_s
## Dump the parsed/converted-to-ruby hash version into a new variable we can run through
dnd_category = JSON.parse(@web_resp)
## Create a var+array we can dump our desired entries into
entries = []

## Loop through this has to find the index-routes they wrote ...
dnd_category["results"].each do |entry|
  ## and dump what we get from the end-point route + the index url end into an instace variable
  @web_resp2 = HTTP.get("https://www.dnd5eapi.co/api/alignments/" + entry["index"]).to_s
  ## add a rubified version of the above to our array
  entries << JSON.parse(@web_resp2)
end

## Loop through our rubified array and create a new entry for each entry, saving the values associated with our keys into the new instance ... and then store that instanced class as a row in our db table
entries.each do |entry|
  puts entry
  Alignment.create!(
    name: entry["name"],
    abbreviation: entry["abbreviation"],
    desc: entry["desc"],
    url: entry["url"],
  )
end

## !! Language Table Rip !! ##

@web_resp = HTTP.get("https://www.dnd5eapi.co/api/languages/").to_s
dnd_category = JSON.parse(@web_resp)
entries = []

dnd_category["results"].each do |entry|
  @web_resp2 = HTTP.get("https://www.dnd5eapi.co/api/languages/" + entry["index"]).to_s
  entries << JSON.parse(@web_resp2)
end

puts "***** Web requests ran successfully - the following entries are stored in our hash:"

typical_speakers = ""
entries.each do |entry|
  Language.create!(
    name: entry["name"],
    rarity: entry["type"],
    typcial_speakers: entry["typical_speakers"].join(", "),
    desc: entry["desc"],
    script: entry["script"],
  )
end

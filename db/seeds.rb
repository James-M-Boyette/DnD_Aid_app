require "http"

# Alignment Table rip

# @web_resp = HTTP.get("https://www.dnd5eapi.co/api/alignments/").to_s

# dnd_category = JSON.parse(@web_resp)
# entries = []

# dnd_category["results"].each do |entry|
#   @web_resp2 = HTTP.get("https://www.dnd5eapi.co/api/alignments/" + entry["index"]).to_s
#   entries << JSON.parse(@web_resp2)
# end

# entries.each do |entry|
#   puts entry
#   Alignment.create!(
#     name: entry["name"],
#     abbreviation: entry["abbreviation"],
#     desc: entry["desc"],
#     url: entry["url"],
#   )
# end

# Languages Table rip

@web_resp = HTTP.get("https://www.dnd5eapi.co/api/languages/").to_s
dnd_category = JSON.parse(@web_resp)
entries = []

dnd_category["results"].each do |entry|
  @web_resp2 = HTTP.get("https://www.dnd5eapi.co/api/languages/" + entry["index"]).to_s
  entries << JSON.parse(@web_resp2)
end
# puts "***** Web requests ran successfully - the following entries are stored in our hash:"
# puts entries
# puts entries.class

entries.each do |entry|
  # p entry
  i = 0
  typical_speakers = ""
  while i < entry["typical_speakers"].length
    typical_speakers << entry["typical_speakers"][i]
    i += 1
  end
  p typical_speakers
  # p entry["typical_speakers"].length
  # p entry["typical_speakers"][0].length
  # Language.create!(
  #   name: entry["name"],
  #   rarity: entry["rarity"],
  #   typcial_speakers: entry["typcial_speakers"],
  #   desc: entry["desc"],
  #   script: entry["script"],
  # )
end
p typical_speakers

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

# Character Schema (use this for character CRUD testing)
# userid
# cfirstname
# cmiddlename
# clastname
# raceid
# classid
# alignmentid
# languageid
# inventoryid
# strength
# dexterity
# constitution
# intelligence
# wisdom
# charisma
# healthmax
# healthcurrent
# healthtemp
# speed
# c = Character.new(userid:"u2", cfirstname:"Bob", cmiddlename:"the", clastname:"Builder", raceid:"r2", classid"c2", alignmentid:"a2", languageid:"l2", inventoryid:"i2", strength:15, dexterity:16, constitution:8, intelligence:12, wisdom:14, charisma:15, healthmax:12, healthcurrent:12, healthtemp:0, speed:0)

# Test Character: Character.new({userid:"u1", cfirstname:"Igor", cmiddlename:"the", clastname:"Strange", raceid:"r1", classid:"c1", alignmentid:"a1", inventoryid:"i1", strength:10, dexterity:17, constitution:14, intelligence:17, wisdom:15, charisma:10, healthmax:14, healthcurrent:14, healthtemp:0, speed:0})

# MAKE SURE USER IS FIRST to avoid conflicts when seeding later (for user-dependant tables)
User.create!([
  {userid: "u0001", email:"sou7hernsaint@gmail.com" , ufirstname: "James", ulastname: "Boyette", password_digest: "$2a$12$0MC4i2YK1CnFV2f5x6O88ODliZlzvQ5y79hAT5sxAu3Plmj9Bxl7i"},
  {userid: "u0002", email:"b0n0riffic@gmail.com" , ufirstname: "Bono", ulastname: "-", password_digest: "$2a$12$9wfKnCwVcOwax3T.raqub.HeCiC99koKMGpQlMgWDCmroAKfrCPsi"},
  {userid: "u0003", email:"jB007nd@gmail.com" , ufirstname: "James", ulastname: "Bond", password_digest: "$2a$12$eh1WOL6c0mH0SPdCdy8R7Ot48iRAA7voJ3/5mcPc41DfQ7c0h6pjG"},
  {userid: "u0004", email:"HJackman@gmail.com" , ufirstname: "Hugh", ulastname: "Jackman", password_digest: "$2a$12$wnblsgODGV6wezxyt3skDeWSd1X7J6YGRNZayBGUV206rGYNH13Aq"},
])
# username: "jboye555", password: "Yankees1!"
# username: "Joshu@Treefolk", password: "u2bEstB@n6NA"
# username: "user007", password: "sh@k3n"
# username: "w0lv3r7ne", password: "w0lv3r7ne1!"

Character.create([
  {userid: "u0001", cfirstname: "Luke", cmiddlename: "", clastname: "Starkiller", raceid: "r0001", classid: "c0001", alignmentid: "a0001", languageid: "l0001", inventoryid: "i0001", strength: 12, dexterity: 16, constitution: 12, intelligence: 13, wisdom: 12, charisma: 15, healthmax: 18, healthcurrent: 18, healthtemp: 0, speed: 1, origin_story: "A long time ago ... when a man had the forsite to retain intellectual property rights ..."},
  {userid: "u0001", cfirstname: "Gandolf", cmiddlename: "the", clastname: "Gray", raceid: "r0001", classid: "c0001", alignmentid: "a0001", languageid: "l0001", inventoryid: "i0001", strength: 12, dexterity: 16, constitution: 12, intelligence: 13, wisdom: 12, charisma: 15, healthmax: 18, healthcurrent: 18, healthtemp: 0, speed: 1, origin_story: "He was a man so powerful, he could define TWO movie franchises ... "},
  {userid: "u0001", cfirstname: "B'Ulgar", cmiddlename: "the", clastname: "Strong", raceid: "r0001", classid: "c0001", alignmentid: "a0001", languageid: "l0001", inventoryid: "i0001", strength: 12, dexterity: 16, constitution: 12, intelligence: 13, wisdom: 12, charisma: 15, healthmax: 18, healthcurrent: 18, healthtemp: 0, speed: 1, origin_story: "The Barbarian Hoards of the North had always been a strong, solemn people ... and B'Ulgar was primed to become Chieftan of All"},
  {userid: "u0001", cfirstname: "C'Thulu", cmiddlename: "von", clastname: "Spiderman", raceid: "r0001", classid: "c0001", alignmentid: "a0001", languageid: "l0001", inventoryid: "i0001", strength: 12, dexterity: 16, constitution: 12, intelligence: 13, wisdom: 12, charisma: 15, healthmax: 18, healthcurrent: 18, healthtemp: 0, speed: 1, origin_story: "He shot webs, and melted the minds of his enemies while drinking Gatorade mixed with pepermint schnopz ... bring on the adventure!"},
])

Alignment.create!([
  {name: "Chaotic Evil", abbreviation: "CE", desc: "Chaotic evil (CE) creatures act with arbitrary violence, spurred by their greed, hatred, or bloodlust. Demons, red dragons, and orcs are chaotic evil.", imgurl: ""},
  {name: "Neutral Evil", abbreviation: "NE", desc: "Neutral evil (NE) is the alignment of those who do whatever they can get away with, without compassion or qualms. Many drow, some cloud giants, and goblins are neutral evil.", imgurl: ""},
  {name: "Lawful Evil", abbreviation: "LE", desc: "Lawful evil (LE) creatures methodically take what they want, within the limits of a code of tradition, loyalty, or order. Devils, blue dragons, and hobgoblins are lawful evil.", imgurl: ""},
  {name: "Chaotic Neutral", abbreviation: "CN", desc: "Chaotic neutral (CN) creatures follow their whims, holding their personal freedom above all else. Many barbarians and rogues, and some bards, are chaotic neutral.", imgurl: ""},
  {name: "Neutral", abbreviation: "N", desc: "Neutral (N) is the alignment of those who prefer to steer clear of moral questions and don’t take sides, doing what seems best at the time. Lizardfolk, most druids, and many humans are neutral.", imgurl: ""},
  {name: "Lawful Neutral", abbreviation: "LN", desc: "Lawful neutral (LN) individuals act in accordance with law, tradition, or personal codes. Many monks and some wizards are lawful neutral.", imgurl: ""},
  {name: "Chaotic Good", abbreviation: "CG", desc: "Chaotic good (CG) creatures act as their conscience directs, with little regard for what others expect. Copper dragons, many elves, and unicorns are chaotic good.", imgurl: ""},
  {name: "Neutral Good", abbreviation: "NG", desc: "Neutral good (NG) folk do the best they can to help others according to their needs. Many celestials, some cloud giants, and most gnomes are neutral good.", imgurl: ""},
  {name: "Lawful Good", abbreviation: "LG", desc: "Lawful good (LG) creatures can be counted on to do the right thing as expected by society. Gold dragons, paladins, and most dwarves are lawful good.", imgurl: ""},
])

Language.create!([
  {name: "Abyssal", desc: "nil", rarity: "Exotic", speakers: "Demons", script: "Infernal"},
  {name: "Celestial", desc: "nil", rarity: "Exotic", speakers: "Celestials", script: "Celestial"},
  {name: "Common", desc: "nil", rarity: "Standard", speakers: "Humans", script: "Common"},
  {name: "Deep Speech", desc: "nil", rarity: "Exotic", speakers: "Aboleths, Cloakers", script: "nil"},
  {name: "Draconic", desc: "Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants.", rarity: "Exotic", speakers: "Dragons, Dragonborn", script: "Draconic"},
  {name: "Dwarvish", desc: "Dwarvish is full of hard consonants and guttural sounds.", rarity: "Standard", speakers: "Dwarves", script: "Dwarvish"},
  {name: "Elvish", desc: "Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.", rarity: "Standard", speakers: "Elves", script: "Elvish"},
  {name: "Giant", desc: "nil", rarity: "Standard", speakers: "Ogres, Giants", script: "Dwarvish"},
  {name: "Gnomish", desc: "The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world.", rarity: "Standard", speakers: "Gnomes", script: "Dwarvish"},
  {name: "Goblin", desc: "nil", rarity: "Standard", speakers: "Goblinoids", script: "Dwarvish"},
  {name: "Halfling", desc: "The Halfling language isn't secret, but halflings are loath to share it with others. They write very little, so they don't have a rich body of literature. Their oral tradition, however, is very strong.", rarity: "Standard", speakers: "Halflings", script: "Common"},
  {name: "Infernal", desc: "nil", rarity: "Exotic", speakers: "Devils", script: "Infernal"},
  {name: "Orc", desc: "Orc is a harsh, grating language with hard consonants. It has no script of its own but is written in the Dwarvish script.", rarity: "Standard", speakers: "Orcs", script: "Dwarvish"},
  {name: "Primordial", desc: "nil", rarity: "Exotic", speakers: "Elementals", script: "Dwarvish"},
  {name: "Sylvan", desc: "nil", rarity: "Exotic", speakers: "Fey creatures", script: "Elvish"},
  {name: "Undercommon", desc: "nil", rarity: "Exotic", speakers: "Underdark traders", script: "Elvish"}
])


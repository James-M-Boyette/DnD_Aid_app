# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

Alignment.create!([
  {name: "Chaotic Evil", abbreviation: "CE", desc: "Chaotic evil (CE) creatures act with arbitrary violence, spurred by their greed, hatred, or bloodlust. Demons, red dragons, and orcs are chaotic evil.", url: ""},
  {name: "Neutral Evil", abbreviation: "NE", desc: "Neutral evil (NE) is the alignment of those who do whatever they can get away with, without compassion or qualms. Many drow, some cloud giants, and goblins are neutral evil.", url: ""},
  {name: "Lawful Evil", abbreviation: "LE", desc: "Lawful evil (LE) creatures methodically take what they want, within the limits of a code of tradition, loyalty, or order. Devils, blue dragons, and hobgoblins are lawful evil.", url: ""},
  {name: "Chaotic Neutral", abbreviation: "CN", desc: "Chaotic neutral (CN) creatures follow their whims, holding their personal freedom above all else. Many barbarians and rogues, and some bards, are chaotic neutral.", url: ""},
  {name: "Neutral", abbreviation: "N", desc: "Neutral (N) is the alignment of those who prefer to steer clear of moral questions and don’t take sides, doing what seems best at the time. Lizardfolk, most druids, and many humans are neutral.", url: ""},
  {name: "Lawful Neutral", abbreviation: "LN", desc: "Lawful neutral (LN) individuals act in accordance with law, tradition, or personal codes. Many monks and some wizards are lawful neutral.", url: ""},
  {name: "Chaotic Good", abbreviation: "CG", desc: "Chaotic good (CG) creatures act as their conscience directs, with little regard for what others expect. Copper dragons, many elves, and unicorns are chaotic good.", url: ""},
  {name: "Neutral Good", abbreviation: "NG", desc: "Neutral good (NG) folk do the best they can to help others according to their needs. Many celestials, some cloud giants, and most gnomes are neutral good.", url: ""},
  {name: "Lawful Good", abbreviation: "LG", desc: "Lawful good (LG) creatures can be counted on to do the right thing as expected by society. Gold dragons, paladins, and most dwarves are lawful good.", url: ""},
])

Language.create!([
  {name: "Abyssal", desc: nil, rarity: "Exotic", typcial_speakers: "Demons", script: "Infernal"},
  {name: "Celestial", desc: nil, rarity: "Exotic", typcial_speakers: "Celestials", script: "Celestial"},
  {name: "Common", desc: nil, rarity: "Standard", typcial_speakers: "Humans", script: "Common"},
  {name: "Deep Speech", desc: nil, rarity: "Exotic", typcial_speakers: "Aboleths, Cloakers", script: nil},
  {name: "Draconic", desc: "Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants.", rarity: "Exotic", typcial_speakers: "Dragons, Dragonborn", script: "Draconic"},
  {name: "Dwarvish", desc: "Dwarvish is full of hard consonants and guttural sounds.", rarity: "Standard", typcial_speakers: "Dwarves", script: "Dwarvish"},
  {name: "Elvish", desc: "Elvish is fluid, with subtle intonations and intricate grammar. Elven literature is rich and varied, and their songs and poems are famous among other races. Many bards learn their language so they can add Elvish ballads to their repertoires.", rarity: "Standard", typcial_speakers: "Elves", script: "Elvish"},
  {name: "Giant", desc: nil, rarity: "Standard", typcial_speakers: "Ogres, Giants", script: "Dwarvish"},
  {name: "Gnomish", desc: "The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world.", rarity: "Standard", typcial_speakers: "Gnomes", script: "Dwarvish"},
  {name: "Goblin", desc: nil, rarity: "Standard", typcial_speakers: "Goblinoids", script: "Dwarvish"},
  {name: "Halfling", desc: "The Halfling language isn't secret, but halflings are loath to share it with others. They write very little, so they don't have a rich body of literature. Their oral tradition, however, is very strong.", rarity: "Standard", typcial_speakers: "Halflings", script: "Common"},
  {name: "Infernal", desc: nil, rarity: "Exotic", typcial_speakers: "Devils", script: "Infernal"},
  {name: "Orc", desc: "Orc is a harsh, grating language with hard consonants. It has no script of its own but is written in the Dwarvish script.", rarity: "Standard", typcial_speakers: "Orcs", script: "Dwarvish"},
  {name: "Primordial", desc: nil, rarity: "Exotic", typcial_speakers: "Elementals", script: "Dwarvish"},
  {name: "Sylvan", desc: nil, rarity: "Exotic", typcial_speakers: "Fey creatures", script: "Elvish"},
  {name: "Undercommon", desc: nil, rarity: "Exotic", typcial_speakers: "Underdark traders", script: "Elvish"}
])
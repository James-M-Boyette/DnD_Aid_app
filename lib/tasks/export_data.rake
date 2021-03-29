# This is the initial functin logic ... whatever :export does?
namespace :export do
  # I think this simply establishes a name for the function?
  desc "Export alignments"
  # This is the underlying logic for the export; the command to run is
  # rails export:export_to_seeds > db/seeds.rb
  # ... so
  task :export_to_seeds => :environment do
    # We call the Alignment table via the ruby object of the same name, and dump each line of the table into the block variable "alignments"
    Alignment.all.each do |alignments|
      # We define a var with some keys we don't want to export
      excluded_keys = ["created_at", "updated_at", "id"]
      # We define a var into-which we're dumping the block variable
      serialized = alignments
      # No idea waht serializable_hash does - appears to be a method we haven't defined here ...
        .serializable_hash
      # Calling a function that will delete the key & value in our newly-created hash IF the key in the original table matches those defined in the var 'excluded_keys'
        .delete_if { |key, value| excluded_keys.include?(key) }
      # prints ... or in this case, writes the following string to the seeds file:
      puts "Alignment.create(#{serialized})"
    end
  end
end

# Note: we also installed "seed_dump" gem
# Install: gem install seed_dump
# Install: (in gem file) gem 'seed_dump'
# Run in command line: rails db:seed:dump

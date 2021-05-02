# If you haven't already, create a few additional .rb files in the d
# 1. Create a new DB table (as needed) into-which you're going to dump your logic. Make sure to label columns either
##     in keeping with the external API's keys, or
##     create conversions from external API's keys to your desired column names during step 4 (below)

# 2. Back up what's currently in the "seeds" file to the "seeds_master" file
# 3. Copy what's in the "seeds_rip_logic" file to the seeds file
# 4. Update routes to match new url endpoint of target db
# 5. Drop and (re-)Create db (rails db:drop & db:create)
# 6. Run db:seed
# 6a. Test in Insomnia as needed / to problem solve
##      The outcome should be data dumped into your newest table

# 7. Back-up this new code (that you've just made in the *seeds* file) to seeds_rip_logic (the seeds file is about to be over-written with the
#      data you just dumped) into your new table
# 8. Run the ?gem? to rip the db table back to the seeds file
# 9. Copy your new seeds info to your seeds_master (a back-up file)
# 10. Repeat as needed
# 11. Once all data is ripped and backed-up, replace what's in your seeds file with all the table-seeding entries you've amassed in your seeds_master file

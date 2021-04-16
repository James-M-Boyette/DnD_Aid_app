require "rails_helper"

# RSpec.describe "Rlignments", type: :request do
#   describe "GET /alignments" do
#     it "should return all the alignments in the db" do
#       # user = User.create!(
#       #   email: "brian@email.com",
#       #   password: "password",
#       # )

#       Alignment.create!(
#         id: "the alignment id",
#         name: "the alignment name",
#         abbreviation: "the alignment abbreviation",
#         desc: "the alignment desc",
#         imgurl: "the alignment imgurl",
#       )
#       # Here, we've hard-coded stuff for each ... name could be "Uber Good" instead of "the alignment name"

#       get "/api/alignments"
#       alignments = JSON.parse(response.body)
#       expect(response).to have_http_status(200)
#       expect(alignments.length).to eq(1)
#     end
#     describe "POST /alignments" do
#       it "should create a new recipe in the db" do
#         post "/api/alignments", params {
#           id: "the id 2",
#           name: "the name 2",
#           abbreviation: "the abbreviation 2",
#           desc: "the desc 2",
#           imgurl: "the imgurl 2",
#         }
#       end
#   end
# end

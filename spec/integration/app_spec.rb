# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do

  include Rack::Test::Methods


  let(:app) { Application.new }

  #CHALLENGE ph2ch5

  context "GET /artists" do
        it "returns 200 OK and list of artists" do
            response = get('/artists?artist=Pixies, ABBA, Taylor Swift, Nina Simone')

            expect(response.status).to eq(200)
            expect(response.body).to eq("Pixies, ABBA, Taylor Swift, Nina Simone")
        end
    end

  context "POST /artists" do
        it "returns 200 OK" do
            response = get('/artists?name=Wild Nothing&genre=Indie')

            expect(response.status).to eq(200)
        end
    end 

  context "GET /artists" do
        it "returns 200 OK and list of artists" do
            response = get('/artists?artist=Pixies, ABBA, Taylor Swift, Nina Simone, Wild Nothing')

            expect(response.status).to eq(200)
            expect(response.body).to eq("Pixies, ABBA, Taylor Swift, Nina Simone, Wild Nothing")
        end
    end
    
end
# end
# end
# end


#   context "POST /sort_names" do
#     it 'returns 200 OK with names in alphabetical order' do
#       response = post('/sort_names?names=Joe,Alice,Zoe,Julia,Kieran')

#       expect(response.status).to eq(200)
#       expect(response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
#     end


#   context "GET /names" do
#     it 'returns 200 OK with correct names' do
#       # Assuming the post with id 1 exists.
#       response = get('/names?name=Julia, Mary, Karim')

#       expect(response.status).to eq(200)
#       expect(response.body).to eq("Julia, Mary, Karim")
#     end

#   context "GET to /" do
#     it "returns 200 OK with the right content" do
#       # Send a GET request to /
#       # and returns a response object we can test.
#       response = get("/")

#       # Assert the response status code and body.
#       expect(response.status).to eq(200)
#       expect(response.body).to eq("Some response data")
#     end
#   end

#   context "POST to /submit" do
#     it "returns 200 OK with the right content" do
#       # Send a POST request to /submit
#       # with some body parameters
#       # and returns a response object we can test.
#       response = post("/submit", name: "Dana", some_other_param: 12)

#       # Assert the response status code and body.
#       expect(response.status).to eq(200)
#       expect(response.body).to eq("Hello Dana")
#     end
#    end
#  end
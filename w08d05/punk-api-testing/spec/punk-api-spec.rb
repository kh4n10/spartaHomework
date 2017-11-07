require 'punk-api-test'
require "rspec"
require "date"

describe "PunkApiTest" do 

  describe "single beer selection" do

    context "given a beer id" do

      it "Returns the beer information in JSON format." do
        expect(PunkApiTest.specific_beer(1).code).to eql(200)
        expect(PunkApiTest.specific_beer(1).parsed_response).to be_instance_of Array
      end

      it "Returns one beer" do
        expect(PunkApiTest.specific_beer(1).length).to eql(1)
      end

      it "returns all of the beers attributes" do
        expect(PunkApiTest.specific_beer(1)[0]['name']).to eql("Buzz")
        expect(PunkApiTest.specific_beer(1)[0]['ibu']).to eql(60)
        expect(PunkApiTest.specific_beer(1)[0]['description']).to be_instance_of String
        expect(PunkApiTest.specific_beer(22)[0]['name']).to eql("Devine Rebel (w/ Mikkeller)")
        expect(PunkApiTest.specific_beer(22)[0]['first_brewed']).to eql("12/2008")
        expect(Date.parse(PunkApiTest.specific_beer(22)[0]['first_brewed'])).to be_instance_of Date
        expect(PunkApiTest.specific_beer(22)[0]['target_fg']).to eql(1030)
      end

    end

    context "given a string" do
      it "returns the appropriate error" do
        expect(PunkApiTest.specific_beer("skimmed").code).to eql(400)
      end
    end  

    context "given an invalid id more than 26" do
      it "returns the appropriate error" do
        expect(PunkApiTest.specific_beer(500).code).to eql(404)
      end    
    end

    context "given an invalid id; float" do
      it "returns the appropriate error" do
        expect(PunkApiTest.specific_beer(15.0).code).to eql(400)
      end    
    end


  end



  describe "random beers selection"do

    context "given a random id" do

      it "Returns the beer information in JSON format." do
        expect(PunkApiTest.random_beer.code).to eql(200)
        expect(PunkApiTest.random_beer.parsed_response).to be_instance_of Array
      end

      it "Returns one beer" do
        expect(PunkApiTest.random_beer.length).to eql(1)
      end

      it 'returns the information of that beer' do
        expect(Date.parse(PunkApiTest.random_beer[0]['first_brewed'])).to be_instance_of Date
        expect(PunkApiTest.random_beer[0]).to have_key('first_brewed')
        expect(PunkApiTest.random_beer[0]).to have_key('name')
      end
    end
  end
 
  describe "All beers selection" do
    context "Given the api is called on the random beer endpoint" do
      it "returns all of the beers" do
        expect(PunkApiTest.all_beers.code).to eql(200)
        expect(PunkApiTest.all_beers.length).to eql(25)
      end 

      it "Returns the beer information in JSON format." do
        expect(PunkApiTest.all_beers.parsed_response).to be_instance_of Array
      end

      it 'returns the information of all beers' do
        expect(Date.parse(PunkApiTest.all_beers[rand(25)]['first_brewed'])).to be_instance_of Date
        expect(PunkApiTest.all_beers[rand(25)]).to have_key('first_brewed')
        expect(PunkApiTest.all_beers[rand(25)]).to have_key('name')
      end

    end    
  end



end
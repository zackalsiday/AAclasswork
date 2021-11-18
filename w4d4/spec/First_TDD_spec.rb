require "rspec"
require "First_TDD"


#expect the method is equal to a uniq array 
#normal code will iterate 


describe "#my_uniq" do 
    it "returns the unique elements" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
end
require "rspec"
require "First_TDD"


#expect the method is equal to a uniq array 
#normal code will iterate 


describe "#my_uniq" do 
    it "returns the unique elements" do 
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end
end

describe "#two_sum" do 
    it "returns pairs that sum to 0" do 
        expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]]) 
    end
end

describe "#matrix" do
    it "returns a 2D transposed" do 
        expect(matrix([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end

describe "#stock_picker" do 
    context "when possible" do 
        it "returns the highest profit" do 
            expect(stock_picker([10,1,2,9])).to eq(8)
        end 
    end 

    context "when not possible" do 
        it "returns not possible" do 
            expect(stock_picker([10,9,8])).to eq(false) 
        end
    end 
end


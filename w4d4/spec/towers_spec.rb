require "rspec"
require "towers"

describe Tower do 

    describe "#initialize" do 
        it "creates the board" do
            tower = Tower.new 
            expect(tower.board).to eq([[4,2,3,1],[],[]])
        end   
    end

    describe "#won?" do 
        context 

    describe "#move" do
        it "moves disc" do
            tower = Tower.new
    
            expect(tower.move).to eq([[4,2,3],[],[1]])
        end
    end


end

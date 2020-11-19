require "algorithms"

describe "my_uniq" do
    it "returns the unique elements in the order in which they first appeared" do
        expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
end

describe Array do 
    describe "#two_sum" do 
        it "finds all pairs of positions where the elements at those positions sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end
end

describe "my_transpose" do
    it " will convert between the row-oriented and column-oriented
    representations. You may assume square matrices for
    simplicity's sake" do 
        rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
    ]
        cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
    ]
        expect(my_transpose(rows)).to eq(cols)
    end 
end 

describe "stockbroker" do 
    it " takes an array of stock prices 
    and outputs the most profitable pair of days on which 
    to first buy the stock and then sell the stock." do 
        prices = [400,500,550,600,750,300,401]
        expect(stockbroker(prices)).to eq([0,4])
    end 
end 
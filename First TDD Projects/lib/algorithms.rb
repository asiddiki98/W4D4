def my_uniq(array)
    array.uniq
end


class Array

    def two_sum
        sums = []
        self.each_with_index do |ele1, i1|
            self.each_with_index do |ele2, i2|
                if i2 > i1 && ele1 + ele2 == 0
                    sums << [i1, i2]
                end
            end
        end
        sums
    end
end

def my_transpose(array)
    array.transpose
end 

def stockbroker(array)
profit = 0
buy_sell = []
    array.each_with_index do |ele1, idx1|
        array.each_with_index do |ele2, idx2|
           if idx2 > idx1  && (ele2 - ele1) > profit
            profit =  (ele2 - ele1) 
            buy_sell = [idx1,idx2]
           end 
        end 
    end 
    buy_sell
end 
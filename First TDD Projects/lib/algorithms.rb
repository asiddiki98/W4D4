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
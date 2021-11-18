
def my_uniq(array)
    newarray = []
    array.each do |ele|
        newarray << ele if !newarray.include?(ele)
    end
    return newarray
end

def two_sum(array)
    newArray = []
    array.each_with_index do |num1,idx1|
        array.each_with_index do |num2,idx2| 
            newArray << [idx1,idx2] if num1 + num2 == 0 && idx2 > idx1 
        end
    end
    newArray 
end




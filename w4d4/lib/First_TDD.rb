
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

def matrix(array)
    newArray = Array.new(array.length) {Array.new}
    (0...array.length).each do |a|
        (0...array.length).each do |b|
            newArray[a][b] = array[b][a]
        end
    end
    newArray
end


def stock_picker(array)
    find_max = 0 
    array.each_with_index do |buy,idx1| 
        array.each_with_index do |sell,idx2|
            if idx2 > idx1 && sell - buy > find_max
                    find_max = sell - buy 
             end
        end
    end
  return false if find_max < 1 
  find_max 
end   
           



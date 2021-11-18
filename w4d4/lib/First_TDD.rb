
def my_uniq(array)
    newarray = []
    array.each do |ele|
        newarray << ele if !newarray.include?(ele)
    end
    return newarray
end


#puts "hello"

# Given a list of integers find the smallest number in the list.

# Example:

def my_min(arr)
  arr.inject do |acc, i|
    count = acc
    if i < count #0 < 3 
      count = i
    end
    count
  end
end

# def my_min(arr)
#   arr.inject do |acc, i|
#     if i < acc 
#       i 
#     else
#       acc
#     end
#   end
# end
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
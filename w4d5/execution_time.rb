require "benchmark"

#puts "hello"

# Given a list of integers find the smallest number in the list.

# Example:

# def my_inject(arr)
#   arr.inject do |acc, i|
#     count = acc
#     if i < count #0 < 3 
#       count = i
#     end
#     count
#   end
# end

# def my_minn(arr)
#   arr.inject do |acc, i|
#     if i < acc 
#       i 
#     else
#       acc
#     end
#   end
# end


# def my_min(arr)
#     count = arr[0]
#      arr.each do |ele|
#         if ele < count 
#             count = ele 
#         end 
#     end
#     count 
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5    
# puts Benchmark.measure{my_min(list) }
# p my_inject(list)    
# puts Benchmark.measure{my_inject(list) }
# p my_minn(list) 
# puts Benchmark.measure{my_minn(list) }

# def largest_contiguous_subsum(list)
#     arr = []
#     (0...list.length).each do |a| 
#         (a...list.length).each do |b| 
#             arr << list[a..b]
#         end
#     end

#     count = arr[0]
#      arr.each do |ele|
#         if ele.sum > count.sum
#             count = ele
#         end 
#     end
#     count.sum

# end
# list = [5, 3, -7]
# p largest_contiguous_subsum(list)   


# lis = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum(lis) 

list = [5, 3, -7]

def largest_contiguous_subsum(list)
  #constant = O(1) -> array.first - 3.times {puts "hi"}
  #linear = O(n) -> include?() - .each(1x)
  #var1 = One variable should track the largest sum so far
  #var2 = another to track the current sum

    (0...list.length).inject do |acc,i| 
      sum = 0  
        if list[acc..i].sum > list[i..-acc - 1].sum && i != list.length - 1 
            sum = list[acc..i].sum 
            acc 
        else
            i 
        end
    
    end




end

lis = [5, 3, -7]
list = [2, 3, -6, 7, -6, 7] Array.new(list.length)
p largest_contiguous_subsum(list)   
p largest_contiguous_subsum(lis)

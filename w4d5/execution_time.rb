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

# list = [5, 3, -7]

# def largest_contiguous_subsum(list)
#   #constant = O(1) -> array.first - 3.times {puts "hi"}
#   #linear = O(n) -> include?() - .each(1x)
#   #var1 = One variable should track the largest sum so far
#   #var2 = another to track the current sum

# def largest_continguous_subsum(arr)
#   largest_sum = arr[0] #5
#   current_sum = 0 # 0

#   arr.each do |ele| #5,3,-7
#     largest_sum = [largest_sum,current_sum] 
#     # 5 = 5,0
#   end
# end
# list = [5,3,-7]
# lis = [2, 3, -6, 7, -6, 7]
# list1 = [-5, -1, -3]
# p largest_contiguous_subsum(list)
# p largest_contiguous_subsum(lis)
# p largest_contiguous_subsum(list1)

def first_anagram?(str1,str2)
    e = str1.chars 
    l = str2.chars 
    e.permutation do |arr| 
        return true if arr == l 
    end 
    return false 


end

p first_anagram?("elvis", "lives") 
p first_anagram?("gizmo", "sally")    #=> false
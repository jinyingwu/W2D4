require "byebug"
# #phase I O(n^2)
# def my_min(arr)
#   smallest = arr[0]
# 
#   arr.each_index do |idx|
#     arr.each_index do |jdx|
#       if idx != jdx
#         if arr[jdx] < arr[idx]
#           if smallest > arr[jdx]
#             smallest = arr[jdx]
#           end
#         end  
#       end 
#     end 
#   end 
#   smallest 
# end 

#Phase II O(n)
def my_min(arr)
  smallest = arr[0]
  
  arr.each do |el|
    smallest = el if el < smallest
  end 
  
  smallest
end 

# p my_min([0, 3, 5, 4, -5, 10, 1, 90 ])

# Phase I
# def sub_sum(arr)
#   result = arr[0]
# 
#   arr.each_index do |idx|
#     arr.each_index do |jdx|
#       next if jdx < idx
#       sum = arr[idx..jdx].reduce(:+)
#       if sum > result 
#         result = sum 
#       end 
#     end 
#   end 
#   result 
# end 

#phase 2 
# NEED o (n) time and O(1) MEMORY
def sub_sum(arr)
  highest = arr[0]
  current = 0
  
  arr.each do |el|
    current += el
    highest = current if current > highest
    current = 0 if current < 0
  end
  highest
end 

# list = [2, 3, -6, 7, -6, 7]
list = [-5, -1, -3]
p sub_sum(list)









#
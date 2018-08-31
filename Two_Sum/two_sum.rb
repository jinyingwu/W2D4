
# TIME = n^s      
def bad_two_sum?(arr, target)
  arr.each_index do |i|
    arr.each_index do |i2|
      next if i2 <= i
      return true if arr[i] + arr[i2] == target
    end
  end
  false  
end

# lower bound of sorting helps if target is on lower end
def two_sum?(arr, target)
  arr = arr.sort
  
  arr.each_with_index do |el, idx|
    # result returns nil if left side isnt in array, otherwise returns index
    result = arr.bsearch_index {|x| target - el <=> x }
    if result && result[idx] != el
      return true
    end
  end 
  
  false
end

p two_sum?([1,2,3,4,5], 10)
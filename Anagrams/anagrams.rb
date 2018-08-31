#phase 1 run time = O(n!)  &  space complexity = O(n!)
def first_anagram?(string, string2)
  perm = string.split('').permutation.to_a 
  perm2 = string2.split('').permutation.to_a 
  
  perm.sort == perm2.sort
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("eel", "lee")    #=> true




#phase 2 run time = O(n)  &  space complexity = O(n)
def second_anagram?(string, string2)
  return false if string.length != string2.length
  
  string.chars.each do |char|
    index = string2.index(char)
    return false if index.nil?
    string2 = string2[0...index] + string2[(index + 1)..-1]
  end 
  
  true
end


#phase 3 run time = O(n^2)  &  space complexity = O(n log n)
def third_anagram?(string, string2)
  string.chars.sort == string2.chars.sort
end

# p third_anagram?("eel", "lee")    #=> true
# p third_anagram?("gizmo", "sally") #=> false


#phase 4 run time = O(n)
# def fourth_anagram?(string, string2)
#   hash1 = Hash.new(0)
#   hash2 = Hash.new(0)
# 
#   string.chars.each do |char|
#     hash1[char] += 1
#   end 
# 
#   string2.chars.each do |char|
#     hash2[char] += 1
#   end 
# 
# 
#   hash1 == hash2
# end

# TIME 3n SPACE-n (size of hash grows depending on input string's length)

def fourth_anagram?(string, string2)
  hash = Hash.new(0)
  
  string.chars.each do |char|
    hash[char] += 1
  end 
  
  string2.chars.each do |char|
    hash[char] -= 1
  end 
  
  hash.values.all? { |v| v == 0 }
end



p fourth_anagram?("eel", "lee")    #=> true
p fourth_anagram?("gizmo", "sally") #=> false
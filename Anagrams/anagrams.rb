def first_anagram?(string1, string2)
  string1p = string1.chars.permutation.to_a
  string1p.each do |sub|
    return true if sub.join("") == string2
  end
  
  false
end

def second_anagram?(string1, string2)
  string2_arr = string2.split("")
  
  string1.chars.each do |el|
    
    idx_for_string2 = string2_arr.find_index(el)
    return false if idx_for_string2.nil?
    string2_arr.delete(string2_arr[idx_for_string2])
  end
  string2_arr.empty?
    
end

def third_anagram?(string1, string2)
  string1.chars.sort.join == string2.chars.sort.join
end

def fourth_anagram?(string1, string2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  
  string1.chars.each do |char|
    hash1[char] += 1
  end
  
  string2.chars.each do |char|
    hash2[char] += 1
  end
  
  hash1.keys.each do |key|
    return false if hash1[key] != hash2[key]
  end  
  
  true
end
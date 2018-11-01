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

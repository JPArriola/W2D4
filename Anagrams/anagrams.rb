def first_anagram?(string1, string2)
  string1p = string1.chars.permutation.to_a
  string1p.each do |sub|
    return true if sub.join("") == string2
  end
  
  false
end

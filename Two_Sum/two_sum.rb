def bf_two_sum?(arr, target)
  arr.each_with_index do |num, idx|
    (idx+1...arr.length).each do |jdx|
      return true if arr[idx] + arr[jdx] == target
    end
  end
  false
  
end

def okay_two_sum?(arr, target)
  
  
  until arr.length <= 1
    return true if (arr.first + arr.last) == target
    
    if arr.first + arr.last > target
      arr.pop
    else
      arr.shift
    end
  end
  false
end

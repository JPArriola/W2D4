require 'byebug'
def my_bad_min(list) # O(n^2)
  my_list = list.dup
  sorted = false
  until sorted
    sorted = true
    my_list.each_index do |idx|
      break if idx == my_list.length - 1
      if my_list[idx] > my_list[idx + 1]
        my_list[idx], my_list[idx + 1] = my_list[idx + 1], my_list[idx]
        sorted = false
        break
      end
    end
  end 
  
  my_list.first
end

def my_min(list) # O(n)
  my_list = list.dup
  min = my_list.shift
  my_list.each do |el|
    if el < min
      min = el
    end
  end
  
  min
end

def bad_lcs(arr) #lcs => largest_contiguous_subsum   # O(n^2) ... (O(n^2) + n + nlog(n))
  subs = []
  arr.length.times do |arr_start|
    (arr_start...arr.length).each do |arr_end|
      sub = arr[arr_start..arr_end]
      subs << sub unless subs.include?(sub)
    end
  end 
  
  subs.map! do |sub|
    sub.reduce(:+)
  end
  subs.sort.last  
end 

def better_lcs(arr)
  best_el = arr[0]
  subsum = 0
  arr.each do |el|
    subsum += el
    if subsum <= best_el && subsum < 0
      subsum = 0
    elsif subsum > best_el
      best_el = subsum
    end
  end

  best_el
end

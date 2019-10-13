def task1
  arr= [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.select.with_index { |_, index| index.even? }
  arr.select.with_index { |_, index| index.odd? }
end
def task2
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.select.with_index { |_, index| index.odd? }
  arr.select.with_index { |_, index| index.even? }
end
def task3
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.index(arr.select { |num| arr[0] < num && num < arr[-1] }.first) || []
end
def task4
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.index(arr.select { |num| arr[0] < num && num < arr[-1] }.last) || []
end
def task5
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.even? }
  arr[1..-2].map{ |elem| elem  + arr[0] }
end
def task6
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.even? }
  arr[1..-2].map{ |elem| elem  + arr[-1] }
end
def task7
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.odd? }
  arr[1..-2].map{ |elem| elem  + arr[-1] }
end
def task8
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.odd? }
  arr[1..-2].map{ |elem| elem  + arr[0] }
end
def task9
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.find_all{ |elem| elem > 0 }.map{ arr.min }
end
def task10
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.find_all{ |elem| elem > 0 }.map{ arr.max }
end
def task11
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.find_all{ |elem| elem < 0 }.map{ arr.min }
end
def task12
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.find_all{ |elem| elem < 0 }.map{arr.max }
end
def task13
  arr = [1, 2, 3, 4, 5, 6]
  m = arr.shift
  arr.push(m)
end
def task14
  arr = [1,2,3,4]
  arr.unshift(arr.pop)
end
def task25
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.map! do |x|
	if x > 0
  	[0, x]
	else
  	x
	end
  end
  arr.flatten
end
def task26
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.map! do |x|
	if x < 0
  	[0, x]
	else
  	x
	end
  end
  arr.flatten
end
def task27
arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
arr.map! do |x|
if x > 0
  [x, 0]
else
  x
end
end
arr.flatten
end
def task28
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.map! do |x|
  	if x < 0
    	[x, 0]
  	else
    	x
  	end
  end
  arr.flatten
end
def task29
  arr = [1, -1, 2, 3, 4, 5, -5, 32, 44, 55, -100, 100]
  arr.sort
end
def task30
  arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
  arr.sort {|x, y| y <=> x }
end
def task33
  arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
  arr.each_with_index.min
end
def task34
  arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
  arr.each_with_index.max
end
def task35
  arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
  arr.sort.each_with_index.first
end
def task36
  arr = [1, -1, 2, 3, 4, 5, -5,  32, 44, 55, -100, 100]
  arr.sort.each_with_index.max
end
def task41
	arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
	odd = arr.find_all{ |elem| elem.odd? }
	odd.min
end
def task42
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  even = arr.find_all{ |elem| elem.even? }
  even.min
end
def task43
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  even = arr.find_all{ |elem| elem.even? }
  even.max
end
def task44
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  odd = arr.find_all{ |elem| elem.odd? }
  odd.max
end
def task45
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  a = arr.select{ |elem| elem > 0 }.max
end
def task46
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  a = arr.select{ |elem| elem < 0 }.max
end
def task47
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  a,b = 0,100
  arr[a..b].min
end
def task48
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  a,b = 0,100
  arr[a..b].max
end
def task49
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  min_arr = arr.index(arr.min)
  arr[0...min_arr].size
end
def task50
 
end
def task51
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  max_arr = arr.index(arr.max)
  arr[0...max_arr].size
end
def task52
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  max_arr = arr.index(arr.max)
  arr[-1...max_arr].size
end
def task53
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  min_arr = arr.index(arr.min)
  arr[min_arr...-1].size
end
def task54
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  min_arr = arr.index(arr.min)
  arr[0...min_arr].size
end
def task55
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  max_arr = arr.index(arr.max)
  arr[max_arr...-1].size
end
def task56
  arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
  min_arr = arr.index(arr.min)
  arr[min_arr...-1].size
end
def task65
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.odd? } + arr.find_all{ |elem| elem.even? }
end
def task66
  arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
  arr.find_all{ |elem| elem.odd? } + arr.find_all{ |elem| elem.even? }
end
def task77

end
def task87
  arr = [1, 2, 3, 4, 5, 6]
  arr.find_all{ |elem| elem.even? } 
end
def task88
  arr = [1, 2, 3, 4, 5, 6]
  arr.find_all{ |elem| elem.even? }.size
end
def task89
  arr = [1, 2, 3, 4, 5, 6] 
  arr.find_all{ |elem| elem.odd? }
end
def task90
  arr = [1, 2, 3, 4, 5, 6]
  arr.find_all{ |elem| elem.odd? }.size
end
def task91
arr = [1, 2, 3, 4, 5, 6]
k = 2
if arr.select{ |el| el < k}
true
else
false
end
end
def task92
  arr = [1, 2, 3, 4, 5, 6]
  k = 2
  arr.select{ |el| el > k }
  if arr.select{ |el| el > k }
  true
  else
  false
  end
end
def task93
  arr = [1, 2, 3, 4, 5, 6]
  k = 2
  arr2 = arr.reject{ |el| el < k }
  if arr2 != arr
  false
  else
  true
  end
end
def task94
  arr = [1, 2, 3, 4, 5, 6]
  k = 2
  arr2 = arr.reject{ |el| el > k }
  if arr2 != arr
  false
  else
  true
  end
end
 
@task ={ 1 => task1, 2 => task2, 3 => task3, 4 => task4, 5 => task5, 6 => task6, 7 => task7, 8 => task8 , 9 => task9,  10 => task10, 11 => task11, 12 => task12, 13 => task13, 14 => task14, 25 => task25, 26 => task26, 27 => task27, 28 => task28, 29 => task29, 30 => task30,  33 => task33, 34 => task34, 35 => task35, 36 => task36, 41 => task41, 42 => task42, 43 => task43, 44 => task45, 46 => task1, 47 => task47,  48 => task48, 49 => task49, 50 => task50, 51 => task51, 52 => task52, 53 => task53, 54 => task54, 55 => task55, 56 => task56, 65 => task65, 66 => task66, 77 => task77, 87 => task87, 88 => task88, 89 => task89, 90 => task90, 91 => task91, 92 => task92, 93 => task93, 94 => task94 }

#92 Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false.

p arr = [1, 2, 3, 4, 5, 6]
puts
k = 1
puts "k = #{k}"
arr1 = arr.select{ |el| el > k}
arr3 = []
if arr1 != arr3
  puts true
else
  puts false
end


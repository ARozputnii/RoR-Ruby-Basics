#94 Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false.

p arr = [1, 2, 3, 4, 5, 6]
puts
k = 2
puts "k = #{k}"
arr2 = arr.reject{ |el| el > k }
if arr2 != arr
p false
else
p true
end

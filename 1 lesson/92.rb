#92 Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false.

p arr = [1, 2, 3, 4, 5, 6]
puts
k = 2
puts "k = #{k}"
p arr.select{ |el| el > k }
if arr.select{ |el| el > k }
true
else
false
end

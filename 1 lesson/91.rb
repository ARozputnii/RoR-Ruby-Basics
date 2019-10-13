#91 Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.

p arr = [1, 2, 3, 4, 5, 6]
puts
k = 2
if arr.select{ |el| el < k}
puts true
else
puts false
end

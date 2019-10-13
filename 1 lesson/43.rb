#Дан целочисленный массив. 
#Найти максимальный четный элемент.

print arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
puts
even = arr.find_all{ |elem| elem.even? }
print even.max
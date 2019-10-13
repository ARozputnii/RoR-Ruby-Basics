# 41Дан целочисленный массив. 
#Найти минимальный четный элемент.

print arr = [1, -1, 3, 4, 5, -5, 44, 55, -100, 100]
puts
odd = arr.find_all{ |elem| elem.odd? }
print odd.min 
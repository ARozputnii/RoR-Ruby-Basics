#66. Дан целочисленный массив. 
#Вывести вначале все его нечетные элементы, 
#а затем - четные.


print arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
puts
print arr.find_all{ |elem| elem.even? } + arr.find_all{ |elem| elem.odd? }

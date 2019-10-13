#88 Дан целочисленный массив. Найти количество четных элементов.

p arr = [1, 2, 3, 4, 5, 6]
puts
p arr.find_all{ |elem| elem.even? }.size


#5. Дан целочисленный массив. 
#Преобразовать его, прибавив к четным числам первый элемент. 
#Первый и последний элементы массива не изменять.


arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
arr.find_all{ |elem| elem.even? }
arr[1..-2].map{ |elem| elem  + arr[0] }

# 1.Дан целочисленный массив. Необходимо вывести 
#вначале его элементы с # четными индексами, 
#а затем - с нечетными.

print  arr= [1, 2, 3, 4, 5, 32, 44, 55, 100]
puts
print arr.select.with_index { |_, index| index.even? }
puts
print arr.select.with_index { |_, index| index.odd? }
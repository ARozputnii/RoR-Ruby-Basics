# 2.Дан целочисленный массив. Необходимо вывести 
#вначале его элементы с # нечетными индексами, 
#а затем - четными.

print arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]

puts
print arr.select.with_index { |_, index| index.odd? } 

puts 
print arr.select.with_index { |_, index| index.even? }

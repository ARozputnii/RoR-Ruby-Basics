
	def task1
arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
arr.find_all{ |elem| elem.even? } + arr.find_all{ |elem| elem.odd? }
	end
	def task2
arr = [1, 2, 3, 4, 5, 32, 44, 55, 100]
arr.find_all{ |elem| elem.odd? } + arr.find_all{ |elem| elem.even? }
	end

@task ={ 1 => task1, 2 => task2 }

#choise = gets.chomp
#puts task[choise.to_i]


# Получим путь к папке с программой и запишем его в переменную current_path
current_path = File.dirname(__FILE__)
# Составим пути к файлам вопросов и ответов, дописав пути к файлам в папке data
task_path = current_path + '/task.txt'

# Если какого-то файла нет, выходим и сообщаем об этом пользователю
unless File.exist?(task_path) 
  abort 'Один из файлов не найден!'
end

require_relative 'task'

# Открываем файл c вопросами, считываем вопросы в массив questions и закрываем
# файл. Аналогично, считываем все ответы в массив answers. Убедитесь, что вы
# сохранили файлы questions.txt и answers.txt в нужной кодировке.
task_file = File.new(task_path, 'r:UTF-8')
questions = task_file.readlines
task_file.close

puts "Домашнее задание №1."
puts "Эта программа содержет все 50 задач."

puts "Нажмите Enter для перехода к следущей задачи"
	choise = gets.chomp
	print @task[choise.to_i] + questions

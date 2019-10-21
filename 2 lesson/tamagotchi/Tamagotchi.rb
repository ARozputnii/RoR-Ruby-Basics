class Pets
	attr_reader :command
	def initialize(name)
	@name = name
	@hp = 100
	@hunger = 50
	@power = 50
	@mood = 50
	@arr = []
	@command = %w(feed play sleep walk help follow status day quit)
	end 

	# погодувать
	def feed
	  @hunger = @hunger - rand(5...50)
	  @power = @power + rand(5...10)
	  @mood = @mood + rand(-20...20)
	  p "You feed #{@name}"
	  p "#{@name} is pleased that he was fed :)"
	  change_hp
	end
	# играть
	def play
	  @hunger = @hunger + rand(5...40)
	  @mood = @mood - rand(10...30)
	  @power = @power - rand(10...20)
	  p "You put on a muzzle on #{@name} and went to the park"
	  change_hp
	end
	# вкласти спати
	def sleep
	  @mood = @mood + rand(-30...30)
	  @power = @power + rand(20...60)
	  @hunger = @hunger + rand(20...50)
	  change_hp
	  p "#{@name} go to sleep"
	  p 'He sleep...'
	  
	end
	# прогулятися
	def walk
	  @mood = @mood + rand(30...50)
	  @power = @power - rand(5...10)
	  @hunger = @hunger + rand(20...40)
	  change_hp

	  p 'You walk down the street with your animal'
	end
	# викликати підказки команд
	def help
	  s = '.'
	  n = 10
	  p @command[0].ljust(n, s) + 'feed your pet'
	  p @command[1].ljust(n, s) + 'play with pet'
	  p @command[2].ljust(n, s) + 'put to bed'
	  p @command[3].ljust(n, s) + "walk with #{@name}"
	  p @command[4].ljust(n, s) + 'show all command'
	  p @command[5].ljust(n, s) + "Watch for #{@name}"
	  p @command[6].ljust(n, s) + "reduce to a doctor, find out about his health"
	  p @command[7].ljust(n, s) + "add day life"
	  p @command[8].ljust(n, s) + "quit"
	end
	# поспостерігати
	def follow
	  r = rand(1..4)
	  case r
	    when 1
	    p "#{@name} began to play and gnawed a sofa. For educational purposes, you beat him."
	    @hp = @hp - rand(5...30)
	    @hunger = @hunger + rand(5...10)
	    @mood = @mood - rand(0...20)
	    @power = @power - rand(10...20)
	    change_hp
	    when 2
	    p "#{@name} brought slippers to the bed in the morning"
	    @hunger = @hunger + rand(5...10)
	    @mood = @mood + rand(10...20)
	    @power = @power - rand(0...10)
	    change_hp
	    when 3
	    p "#{@name} ran out into the street and saw a female. He returned very pleased. :)"
	    @hunger = @hunger + rand(5...10)
	    @mood = @mood + rand(40...80)
	    @power = @power - rand(5...40)
	    change_hp
	    when 4
	    p "he lay and looked at the window"
	    @hunger = @hunger + rand(5...10)
	    @mood = @mood + rand(0...5)
	    @power = @power + rand(0...5)
	    change_hp
	  end
	end
	# Функція виводить характеристики тамагочі
	def status
	  p "Health: #{@hp}"
	end





	private

	@arr = %w(I wish you a good time when I will be your president, you will be my pet, I want to the sea, feed me, you are stupid but it's not bad, if I were a bird, you are good)
	def change_hp
	  if    @hunger.to_i > 100
	    @hp -= rand(10...20)
	    puts "I'm hungry"
	  elsif @hunger.to_i >120
	    @hp -= rand(20...50)
	     puts "Man I'm very hungry"
	  elsif @hunger.to_i > 200
	    @hp -= rand(50...80)  
	    puts "Feed me or I'll eat you"
	  elsif @hunger.to_i < 0
	    @hp += rand(0...5)
	    puts "Freeeesh meeeeaat "
	    end
	  if @mood.to_i > 100
	   @hp +=  rand(0...5) 
	  elsif @mood.to_i < 0
	   @hp -=  rand(1...5)
	   puts 'sorry i have no mood '
	   end
	  if @pover.to_i > 100
	   @hp += rand(5...10) 
	  elsif @pover.to_i < 0
	   @hp -= rand(5...10) 
	   puts 'I have no strength'
	   end
	  if @hp <= 0
	    p " Gameover"
	    puts "Your pets dead"
	    puts "You are a poor pet owner. Greenpeace is coming for you."
	    exit
	  end
	end 
end

#### MAIN


p " Tamagotchi "

while true
	pets_list = %w(Cat Dog Putin)
	p "Please choose your pet from this list (enter number)"
	pets_list.length.times {|a| p (a + 1).to_s + ' ' + pets_list[a]}

	chose_pet = gets.chomp.to_i
  while true
	  case chose_pet
		  when 1
		  my_pet = Pets.new(pets_list[0])
		  break
		  when 2
		  my_pet = Pets.new(pets_list[1])
		  break
		  when 3
		  my_pet = Pets.new(pets_list[2])
		  break
		  else
		  p 'Something wrong, retype'
		  chose_pet = gets.chomp.to_i
	  end
	end
	p "Your pet #{pets_list[chose_pet - 1]}." 
	p "You need to look after him. Good luck."
	p "View the list of actions, write 'help'"

	print 'Choose action: '
		
	command = gets.chomp.downcase

	
	#feed play sleep walk help follow status day quit
	while command != 'stop'
		puts "________________________________________"
	  
	  p "If you need help, say 'help'"
	  puts "________________________________________"
		my_pet.status
		puts "________________________________________"
    case command
	    when my_pet.command[0]
	    my_pet.feed
	    when my_pet.command[1]
	    my_pet.play
	    when my_pet.command[2]
	    my_pet.sleep
	    when my_pet.command[3]
	    my_pet.walk
	    when my_pet.command[4]
	    my_pet.help
	    when my_pet.command[5]
	    my_pet.follow
	    when my_pet.command[6]
	    my_pet.status
	    when my_pet.command[7]
	    my_pet.day
	    when my_pet.command[8]
	    break
    else
    	p "Didn't understand. Repeat again. "
    end

	  print 'Choose the next command: '
	  


	  command = gets.chomp.downcase
  end
end

class Pets


 def initialize
   $name 
   $hp 
   $hunger 
   $power 
   $mood 
 end 

 # погодувать
 def feed
   $hunger-= rand(5...50)
   $power += rand(5...10)
   $mood += rand(-20...20)
   $message = "Вы покормили своего малыша"
   $message = "#{$name} рад что его кормили :)"
   change_hp
 end
 # играть
 def play
   $hunger += rand(5...40)
   $mood -= rand(10...30)
   $power -= rand(10...20)
   $message = "Вы одели на #{$name} намордник и пошли гулять в парк. "
   change_hp
 end
 # вкласти спати
 def sleep
   $mood += rand(-30...30)
   $power += rand(20...60)
   $hunger += rand(20...50)
   change_hp
   $message = "#{$name} пошёл спать"
   
 end
 # прогулятися
 def walk
   $mood += rand(30...50)
   $power -= rand(5...10)
   $hunger += rand(20...40)
   change_hp

   $message = 'Вы пошли гулять на улицу со своим животным. '
 end

  #поспостерігати
 def follow
   r = rand(1..4)
   case r
     when 1
     $message = "#{$name} начал играться и погрыз диван, вам пришлось у воспитательных целять показать кто в доме man"
     $hp -= rand(5...30)
     $hunger += rand(5...10)
     $mood -= rand(0...20)
     $power -= rand(10...20)
     change_hp
     when 2
     $message = "#{$name} притащил в зубах тапочки к постели"
     $hunger += rand(5...10)
     $mood += rand(10...20)
     $power -= rand(0...10)
     change_hp
     when 3
     $message = "#{$name} вырвался на улицу и встретил shemale. Вернулся грязный но очень доволен :)"
     $hunger += rand(5...10)
     $mood += rand(40...80)
     $power -= rand(5...40)
     change_hp
     when 4
     $message = "залип глядя в окно"
     $hunger += rand(5...10)
     $mood +=rand(0...5)
     $power += rand(0...5)
     change_hp
   end
 end
 # Функція виводить характеристики тамагочі


  def wash
   $message = "Теперь ваш любимчик пахнет ромашками"
   $hunger += rand(5...10)
   $mood += rand(0...5)
   $power += rand(0...5)
   change_hp
 end
  def training
   $message = "#{$name} хорошо поддается дрессировки . Ему нравится что ты придаешь ему внимание. Не забудь покормить его."
   $hunger += rand(10...20)
   $mood += rand(20...35)
   $power += rand(10...25)
   change_hp
 end
 def fleas
   $message = "Свершилось!!! Ты это сделал. теперь он будет более счастлив и добр к тебе"
   $hunger += rand(0...5)
   $mood += rand(0...5)
   $power += rand(0...5)
   change_hp
 end


  #  $status = "Health: #{$hp} Голод: #{$hunger} Сила: #{$power} Настроение: #{$mood}"
 	
 private

 def change_hp
   if $hunger.to_i > 100
   		$hunger = 100
     $hp -= rand(20...30)
     $message = " #{$name} ну очень голоден покорми уже его , изверг"
   elsif $hunger.to_i < 0
		$hunger = 0
     $hp += rand(0...5)
     $message = "Freeeesh meeeeaat "
     end
   if $mood.to_i > 100
   	$mood = 100
    $hp += rand(0...5) 
   elsif $mood.to_i < 0
   	$mood = 0
    $hp -= rand(1...5)
    $message = "#{$name} имеет плохое настроение "
    end
   if $power.to_i > 100
   	$power = 100
    $hp += rand(5...10) 
   elsif $power.to_i < 0
   	$power = 0
    $hp -= rand(10...20) 
    $message = "#{$name} чувствует себя очень хорошо"
    end
   if $hp <= 0
     $message = "Gameover"
   elsif  $hp >= 100
      $hp = 100
   end
 end 
end


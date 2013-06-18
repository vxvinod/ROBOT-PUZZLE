class Robot

	$x=0
	$y=0
	$distance
	def print
		puts"Hi my name is Chitti\n Command me where to go\n1.FORWARD\n2.BACK\n3.LEFT\n4.RIGHT\n5.End the Command"
	end
	
	def direction
		@command=0
		#@prev_command=1
		while @command!='5' do
		#	@prev_command=@command
			puts"Enter the Direction to command the Chitti"
			@command=gets.chomp
		  

		   
		   	$y=$y+1 if (@command=='1')
		   	$y=$y-1  if (@command=='2')
		   	$x=$x-1  if (@command=='3' )
		 	$x=$x+1 if(@command=='4')
		   	
		 
		end

		puts "value of  x is #$x \n and Value of y is #$y"
		
	end

	def position_calculation
		@point=($x**2)+($y**2)
		$distance=Math.sqrt(@point)
		puts "#$distance"

	end

	def position
		puts "#$x  #$y"
		if($y>0 && $x>0)
			puts "Chitti is in #{$distance} NORTH EAST from the origin"
		elsif($y<0 && $x0)
			puts "Chitti is in #{$distance} SOUTH EAST from the origin"
		elsif($y<0 && $x<0)
			puts "Chitti is in #{$distance} SOUTH WEST from the origin"
		elsif($y>0 && $x<0)
			puts "Chitti is in #{$distance} NORTH WEST from the origin"
		elsif($y==0 && $x==0)
			puts "Chitti is in #{$distance} SAME PLACE from the origin"
		elsif($y==0 && $x>0)
			puts "Chitti is in #{$distance} EAST from the origin"
		elsif($y==0 && $x<0)
			puts "Chitti is in #{$distance} WEST from the origin"
		elsif($y<0 && $x==0)
			puts "Chitti is in #{$distance} SOUTH from the origin"
		elsif($y>0 && $x==0)
			puts "Chitti is in #{$distance} WRST from the origin"
		end
		

	end

end

ro=Robot.new 
ro.print
ro.direction
ro.position_calculation
ro.position
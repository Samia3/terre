def argument
	saisie = /\A[-+]?\d+\z/
	var1 = ARGV[0]
  	var2 = ARGV[1]
  	var3 = ARGV[2]

	if(ARGV.length != 3)
		puts "error"
	elsif(var1.match?(saisie) == false || var2.match?(saisie) == false || var3.match?(saisie) == false)
		puts "error"
	elsif(var1 == var2 || var1 == var3 || var2 == var3)
		puts "error"
	else
		suisse
	end
end

def suisse
	flag = true
  	tmp =
  	while(flag)
    	flag = false
    	i=0
    	while(i<ARGV.length() - 1)  
      		if(ARGV[i] > ARGV[i+1])
        		tmp = ARGV[i]
        		ARGV[i] = ARGV[i+1]
        		ARGV[i+1] = tmp
        		flag = true
      		end
      		i+=1
    	end
  	end

  	puts ARGV[1]
end

argument
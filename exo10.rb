def argument 
	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 1 || ARGV[0].match?(saisie) == false)
		puts "error"
	else
		premier
	end
end

def premier 
	vrai = 0
	num = ARGV[0].to_i
	if(num < 0)
		puts "il faut insérer un nombre entier positif"
	elsif(num == 0)
		puts "0 n'est pas premier parce qu'il est divisible par tous les nombres entiers !"
	elsif(num == 1)
		puts "1 n'est pas premier, les deux diviseurs et lui-même ne sont pas distints !"
	elsif(num == 2)
		puts "Oui, 2 est un nombre premier"
	else
		for i in 2..(num -1)
			if(num%i == 0)
				vrai += 1
				break
			end
		end
		if(vrai == 0)
			puts "Oui, #{num} est un nombre premier"
		else
			puts "Non, #{num} n'est pas un nombre premier"
		end
	end
end

argument
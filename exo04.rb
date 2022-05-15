def argument
	saisie = /\A[-+]?\d+\z/
	if(ARGV.length != 1)
		puts "mettez un seul argument"
	elsif(ARGV[0].match?(saisie) == false)
		puts "Tu ne me la mettras pas à l'envers"
	else
		calcule
	end
end

def calcule
	var = ARGV[0].to_i
	if(var%2 == 0)
		puts "pair"
	else
		puts "impair"
	end
end

argument
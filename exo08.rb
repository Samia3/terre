def argument

	saisie = /\A[-+]?\d+\z/

	if(ARGV.length != 2)
		puts "error"
	elsif(ARGV[0].match?(saisie) == false || ARGV[1].match?(saisie)== false)
		puts "error"
	elsif( ARGV[1].to_i < 0)
		puts "error"
	else
		puissance
	end
end

def puissance
	var = 1

	for i in 1..(ARGV[1].to_i)

		var = var * ARGV[0].to_i
		
	end
	puts var
end


argument
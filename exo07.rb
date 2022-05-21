def argument

	saisie = /\A[-+]?\D+\z/

	if(ARGV.length != 1)
		puts "error"
	elsif(ARGV[0].match?(saisie) == false)
		puts "error"
	else
		taille
	end
	
end

def taille
	puts ARGV[0].length
end

argument
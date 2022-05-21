def argument
	saisie = /\A[-+]?\d+\z/
	faux = 0
	if(ARGV.length <= 2)
		puts "error"
	else
		for i in 0..(ARGV.length() -1)
			if(ARGV[i].match?(saisie) == false)
				faux += 1
			end
		end
		if(faux != 0)
			puts "error"
		else
			trie
		end
	end
end

def trie
	vrai = 0
	j=0
	while(j<ARGV.length() -1) 
		if(ARGV[j].to_i>ARGV[j+1].to_i)
			vrai += 1
		end
		j+=1
	end
	if(vrai == 0)
		puts "Triée !"
	else
		puts "Pas triée !"
	end

end

argument	
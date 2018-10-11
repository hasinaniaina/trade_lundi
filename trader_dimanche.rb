def trader_dimanche(array)
	index = 0
	compteur = 0
	max = 0
	tab = []
	while index < array.length
		index2 = 0 + compteur
		while index2 < array.length
			calcule =  array[index2] - array[index]
			if max < calcule then
				max = calcule
				achat = array[index]
				vente = array[index2]
				achat_index = index
				vente_index = index2
			end
			index2 += 1
		end
		compteur += 1 
		index += 1
	end
	puts "#{[achat_index,vente_index]} # $#{vente} - $#{achat} = $#{max}"
end

def the_hash
jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }
index = 1
i = "jour_#{index}"
i.to_h
end
the_hash






@dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
def jean_michel_data(word, dictionnary)
	index = 0
	index2 = 0
	tab = Hash.new(0)
	word_split = word.split(' ')
	while index2 < word_split.length
		while index < dictionnary.length
			if word_split[index2] == 'below' then
				tab['below'] += 1
				tab['low'] += 1 
				break
			elsif  dictionnary[index] == word_split[index2] 
				tab[dictionnary[index]] += 1
			end
			index += 1 
		end
		index2 += 1
		index = 0
	end
	print tab
end


# jean_michel_data('below go go low below go go ',@dictionnary)

def find(array,dictionnary)
	index = 0
	index2 = 0
	tab = Hash.new(0)
	word_split = array
	while index2 < word_split.length
		while index < dictionnary.length
			if word_split[index2] == 'below' then
				tab['below'] += 1
				tab['low'] += 1 
				break
			elsif  dictionnary[index] == word_split[index2] 
				tab[dictionnary[index]] += 1
			end
			index += 1 
		end
		index2 += 1
		index = 0
	end
	puts tab
end


def read_file(file)
	file2 = File.open(file, 'r')
	compteur = 0
	tab = []
	file2.each_line{|line|
	tab[compteur]= line.split(' ')
	compteur += 1
}
	tab.flatten!
	find(tab,@dictionnary)
end
# read_file('hasina.txt')


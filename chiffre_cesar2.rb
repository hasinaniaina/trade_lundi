
def chiffre_cesar(word,number)
	word_break = word.split('')
	word_catch = []
	compteur = 0
	word_break.each do |wb|
		if wb == " " then 
			word_catch[compteur] = wb
		elsif wb =~ /[a-z]/ then
			lettre = wb.ord + number
			lettre = (lettre - 122) + (97-1)  if lettre > 122
			word_catch[compteur] = lettre.chr
		elsif wb =~ /[A-Z]/ then
			lettre = wb.ord + number
			lettre = (lettre - 90) + (65 - 1)  if lettre > 90
			word_catch[compteur] = lettre.chr
		end
		compteur +=1
	end
	puts word_catch.join('')

end 

chiffre_cesar('Yy',2)
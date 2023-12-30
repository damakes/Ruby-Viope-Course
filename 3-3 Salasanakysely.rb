# Luvun kolmannessa tehtävässä toteutetaan nimeä ja salasanaa pyytävä valintarakenne. Ensin ohjelma pyytää nimeä muodossa "Anna nimi: ". Jos käyttäjä antaa nimen "Erkki", pyydetään lisäksi salasana muodossa "Anna salasana: ". Jos salasana on "haukionkala", tervehditään käyttäjää tulosteella "Hei Erkki!". Jos käyttäjä antaa väärän nimen, tulostetaan "En tunne sinua.", ja jos salasana on väärin, "Et ole Erkki.".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna nimi:
# Erkki
# Anna salasana:
# hahaa!
# Et ole Erkki.


# coding: utf-8

puts "Anna nimi: "
nimi = gets.chomp!

if nimi == "Erkki"
	puts "Anna salasana: "
	salasana = gets.chomp!
	if salasana == "haukionkala"
		puts "Hei Erkki!"
	else
		puts "Et ole Erkki."
	end
else
	puts "En tunne sinua."
end

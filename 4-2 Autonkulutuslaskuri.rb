# Luvun toisessa tehtävässä tehdään laskuri, jolla lasketaan paljonko autolla ajaminen tulee maksamaan bensan hinnassa mitattuna. Pyydetään ensiksi käyttäjältä kaksi syötettä "Anna autolla ajetut kilometrit: " sekä "Anna bensanhinta: ". Tämän jälkeen käyttäjä voi valita, onko matka maantie- vai kaupunkiajoa valinnalla "Onko matka (1) maantieajoa vai (2) kaupunkiajoa?: ".

# Oletetaan, että käyttäjän auto kuluttaa 5 litraa bensiiniä sadalla kilometrillä jos matka ajetaan maantiellä, ja 9 litraa jos matka ajetaan kaupungissa. Kun lukemat on tiedossa, lasketaan vastaus kaavalla (bensanhinta*kulutus litroina*matka kilmetreinä) / 100.0, ja tulostetaan se muodossa "Matka maksoi [tulos] euroa.". Ilmoitetaan tulos desimaalien tarkkuudella, joskaan vastausta ei tarvitse erikseen pyöristää. Lopuksi kysytään käyttäjältä "Lasketaanko toinen matka? (k/e): ". Jos käyttäjä valitsee "k", aloitetaan alusta. Jos "e", lopetetaan. Ohjelmassa voidaan olettaa, että käyttäjä syöttää ainoastaan oikeita lukuarvoja ja valitsee ainoastaan kelvollisia vaihtoehtoja.

# Toimiessaan oikein ohjelma tulostaa esimerkiksi seuraavaa:


# Example output:
# Anna autolla ajetut kilometrit: 140
# Anna bensanhinta: 1.44
# Onko matka (1) maantieajoa vai (2) kaupunkiajoa?: 2
# Matka maksoi 18.144 euroa
# Lasketaanko toinen matka? (k/e)?: e

# coding: utf-8

kierros = 1

while kierros > 0
print "Anna autolla ajetut kilometrit: "
km = gets.to_i
print"Anna bensanhinta: "
hinta = gets.to_f
print"Onko matka (1) maantieajoa vai (2) kaupunkiajoa?: "
valinta =gets.to_f

case valinta
	when 1
		tulos= ( hinta * 5 * km ) / 100.0
	when 2
		tulos = ( hinta * 9 * km ) / 100.0
	end

puts"Matka maksoi #{tulos} euroa"
print"Lasketaanko toinen matka? (k/e)?: "
ohjelma=gets.chomp.downcase

if ohjelma == "k"
	kierros +=1
elsif ohjelma == "e"
	kierros =-1
else
	puts "virheellinen valinta"
end

end

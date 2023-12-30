# Luvun viimeinen tehtävä on hieman tavallisuudesta poikkeava, sillä tiedostoja apuna käyttäen tarkoituksenamme on rakentaa luovia ideoita ehdottava ohjelma.

# Ohjelma toteutaan siten, että palvelimella on kolme tiedostoa "5-5a_tiedosto.txt","5-5b_tiedosto.txt" ja "5-5c_tiedosto.txt". Näistä ensimmäinen, "A"-tiedosto sisältää joukon adjektiiveja kuten iso, tarpeeton tai kirkas. "B"-tiedosto sisältää joukon substantiiveja, kuten poliisi, palomies tai vesipullo. "C"-tiedosto sisältää erilaisia tekstityyppejä kuten novelli, kertomus, tarina tai balladi. Jokaisessa tiedostossa on aina yksi sana per rivi, ja se on valmiiksi taivutettu oikeaan sijamuotoon.

# Ohjelma tekee siis seuraavaa; luetaan jokainen tiedosto omaan taulukkoonsa siten, että yksi rivi on aina yhdessä alkiossa. Tämän jälkeen arvotaan jokaisesta taulukosta yksi alkio, ja koostetaan niistä tarinan idea muodossa "[adjektiivi] [substantiivi] [tarinatyyppi]". Ohjelma tulostaa ajettaessa ainoastaan tekstin "Uuden jutun nimi voisi olla vaikkapa seuraava:\n [arvottu nimi]".

# Toimiessaan oikein ohjelma voi ehdottaa vaikka seuraavaa:

# Example output:
# Uuden jutun nimi voisi olla vaikkapa seuraava:
# Punaisen hanhen kertomus


#coding: utf-8

def lue (tiedosto)
	arkisto = []

	tieto = File.open(tiedosto, "r")
	tieto.each {|rivi|arkisto << rivi.chop!}
	tieto.close

	pituus = arkisto.length
	arvonta = rand(pituus)
	return arkisto[arvonta]
end

t_1 = lue("5-5a_tiedosto.txt")
t_2 = lue("5-5b_tiedosto.txt")
t_3 = lue("5-5c_tiedosto.txt")

nimi = [t_1, t_2, t_3].join(" ")

puts "Uuden jutun nimi voisi olla vaikkapa seuraava:"
puts nimi

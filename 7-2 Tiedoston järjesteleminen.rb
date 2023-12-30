# #Luvun toisessa tehtävässä Työskellään tiedostojen kanssa ja tehdään yksinkertainen suodatin joka läpikäy tiedoston sisällön, järjestelee sen ja poistaa sieltä turhat merkinnät.

# Tee ohjelma, joka lukee tiedostosta "7-2a_tiedosto.txt" listan sanoja, joita on aina yksi per rivi. Nämä sanat voivat olla mitä tahansa, ja ne saattaa esiintyä tiedostossa useaan kertaan. Tee ohjelma, joka lukee listan, poistaa sieltä kaikki ylimääräiset, useampaan kertaan olevat alkiot (1 kpl jätetään talteen), lajittelee sanat aakkosjärjestykseen ja tulostaa tuloksen tiedostoon "7-2b_tiedosto.txt". Toimiessaan oikein ohjelma ei tulosta mitään.

# Jos oletetaan, että käsiteltävän tiedoston sisältö on seuraavanlainen:

# kivitasku
# nakki
# suihkuturbiini
# aapinen
# avantgarde
# lakana
# zylofoni
# celsius
# byrokraatti
# lukihäriö
# mustikka
# magneetti
# kolikko
# avantgarde
# lakana
# zylofoni
# celsius
# koivu
# lusikka
# kahvikuppi
# salama
# kotelo
# puhelin
# avaimet
# lukihäriö
# kahvikuppi
# kahvikuppi
# kahvikuppi
# kahvikuppi
# aapinen

# ... on siitä tuotettu siistitty ja suodatettu versio seuraavanlainen:

# aapinenaapinen
# avaimet
# avantgarde
# byrokraatti
# celsius
# kahvikuppi
# kivitasku
# koivu
# kolikko
# kotelo
# lakana
# lukihäriö
# lusikka
# magneetti
# mustikka
# nakki
# puhelin
# salama
# suihkuturbiini
# zylofoni
# #


tieto= File.open("7-2a_tiedosto.txt","r")
tietoon = File.open("7-2b_tiedosto.txt","w")
tietoon.puts(tieto.uniq.sort.each {|rivi| rivi})
tieto.close

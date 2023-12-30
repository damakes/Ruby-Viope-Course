
# Neljäs harjoitustehtävä käsittelee Rubyn erilaisia tapoja käsittää lukuarvoja sekä pyöristämistoimintoja. Tehtävänä onkin rakentaa ohjelma, jolle voidaan antaa mielivaltaisen mittainen desimaaliluku, jonka ohjelma pyöristää yhden desimaalin tarkkuuteen.

# Toteutetaan ohjelma siten, että ohjelma aloittaa pyytämällä desimaalilukua muodossa "Anna jokin desimaaliluku: ". Tämän jälkeen ohjelma laskee pyöristetyn luvun, ja tulostaa "Luku on pyöristettynä [vastaus]".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna jokin desimaaliluku: 8.49334545
# Luku on pyöristettynä 8.5


# coding: utf-8
print "Anna jokin desimaaliluku: "
luku = gets.to_f.round(1)
print "Luku on pyöristettynä #{luku}"

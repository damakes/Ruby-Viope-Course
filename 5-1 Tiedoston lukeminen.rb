# Ensimmäinen tehtävä on variantti Moi maailma!-tehtävästä, joka on eräänlainen ikiaikainen klassikko ohjelmointitehtävien parissa. Tälläkertaa tehtävänä on lukea tiedostoon nimeltä "5-1_tiedosto.txt" tallennettu viesti, ja tulostaa se ruudulle. Tiedoston sisältö voidaan tulostaa ruudulle sellaisenaan.

# Kun ohjelma toimii oikein, tulostaa se seuraavaa:

# Example output:
# Hei,

# testataan,testataan.

#coding utf-8

lue = File.open("5-1_tiedosto.txt","r")

lue.each{|item|print item}
lue.close

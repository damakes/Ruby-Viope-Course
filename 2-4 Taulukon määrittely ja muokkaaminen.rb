# Ensimmäinen taulukkoja koskeva tehtävä käsittelee taulukosta tehdyn listan luomista ja muokkaamista.

# Määrittele ohjelmaasi lista, jossa on alkioina merkkijonot "banaani", "turtana", "ananas", "kaneli" ja "unikko". Tämän jälkeen materiaalin ohjeita apunakäyttäen tee seuraavat toimenpiteet:

# (1) Lisää listalle alkio, jolle annetaan arvoksi "karhea", (2) poista listalta se alkio, jonka arvo on kaneli ja (3) laita taulukon alkiot aakkosjärjestykseen. Lopuksi vielä tulosta taulukko komennolla "puts [taulukonnimi]".

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# ananas
# banaani
# karhea
# turtana
# unikko
# Hide


# coding: 8-utf
lista= Array["banaani", "turtana", "ananas", "kaneli" ,"unikko"]
lista.push("karhea")
lista.delete("kaneli")
taulukonnimi=lista.sort
puts [taulukonnimi]

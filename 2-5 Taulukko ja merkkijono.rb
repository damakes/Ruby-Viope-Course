
# Luvun viimeisessä tehtävässä harjoitellaan lisää merkkijonoilla ja taulukoilla työskentelyä.

# Tee ohjelma, joka ensin pyytää käyttäjältä tekstisyötteen muodossa "Kirjoita jotain: ". Tämän jälkeen, merkkijonojen ja taulukoiden metodeja apunakäyttäen tee merkkijonosta taulukko katkaisemalla taulukko aina välilyöntimerkin (" ") kohdalta. Tämän jälkeen poista taulukosta kaikki ne alkiot, jotka ovat kopioita muista alkioista, ja järjestä nämä sanat aakkosjärjestykseen. Lopuksi tulosta lista sanoista muodossa "Tässä sanat aakkosjärjestyksessä: [lista]". Taulukon tulostukseen voit käyttää yksinkertaista puts [taulukonnimi] -komentoa. Ohjelmassa voidaan olettaa, että kaikki sanat kirjoitetaan pelkästään pienillä alkukirjaimilla.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Kirjoita jotain: tapettiin kärpänen tapettiin
# Tässä sanat aakkosjärjestyksessä:
# kärpänen
# tapettiin


# coding: 8-utf
print "Kirjoita jotain: "
lista = gets.chomp!.split(" ").uniq.sort
taulukonnimi= lista
puts "Tässä sanat aakkosjärjestyksessä:"
puts [taulukonnimi]

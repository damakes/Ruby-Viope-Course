
# Luvun ensimmäisessä tehtävässä harjoitellaan oikeaoppista tiedoston avaamista lukemista varten, koska kyseinen kohta on tavallisin käyttäjän toimesta tapahtuvan virheilmoituksen tuottava toiminto.

# Tee siis ohjelma, joka kysyy käyttäjältä tiedostonnimeä muodossa "Anna luettavan tiedoston nimi:" ja yrittää avata kyseisen tiedoston. Luo ohjelmaan virheenkäsittelyrutiini siten, että virheellisen tiedoston antaminen ei aiheuta virhetilannetta, ja toteuta muu ohjelma siten, että tiedoston nimeä pyydetään niin monta kertaa, että kelvollinen tiedostonnimi annetaan. Jos tiedostonnimi on oikein, lue ja tulosta tiedoston sisältö ruudulle.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna luettavan tiedoston nimi:
# testii
# Tiedoston nimi ei kelpaa.
# Anna luettavan tiedoston nimi:
# 8-1_tiedosto2.txt
# ﻿Terve!
# Testii


while true
  puts "Anna luettavan tiedoston nimi:"
  nimi = gets.chop!

  begin
    tiedosto = File.open(nimi)
    tiedosto.each{|rivi| print rivi}
    tiedosto.close
    break

  rescue
    puts "Tiedoston nimi ei kelpaa."
  end

end


# Luvun kolmas tehtävä esittelee syötteen pyytämisen käyttäjältä ja testaa tyyppimuunnosfunktioita käytännössä. Tee siis ohjelma, joka pyytää käyttäjältä luvun kysymyksellä "Anna joku luku:". Tämän jälkeen ohjelma ilmoittaa käyttäjälle annetun luvun binaarilukuna muodossa "Antamasti luku on binaariarvoina [tulos]" sekä heksalukuna muodossa "ja heksoina [tulos]". Helpoiten tehtävää kannattaa lähestyä to_s(2) ja to_s(16)-metodeja apuna käyttäen.

# Tehtävässä voidaan lisäksi olettaa, että käyttäjä ei anna virheellisiä syötteitä, joten siihen ei tarvitse varautua. Lisäksi kannattaa muistaa, että käyttäjältä vastaanotetun syötteen loppuun tallentuu aina rivinvaihtomerkki, josta pääsee eroon parhaiten chop! tai chomp!-metodeilla.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Anna joku luku:
# 2343
# Antamasi luku on binaariarvoina 100100100111
# ja heksoina 927


#coding: utf-8
puts "Anna joku luku:"
luku = gets.to_i
puts "Antamasi luku on binaariarvoina #{luku.to_s(2)}\nja heksoina #{luku.to_s(16)}"

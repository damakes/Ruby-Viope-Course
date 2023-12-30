# Luvun viimeinen tehtävä on kertaustehtävä, jossa rakennetaan numeronarvauspeli. Tee ohjelma, joka arpoo luvun väliltä 0-99 ja pyytää käyttäjää arvaamaan annettu luku.

# Mikäli käyttäjä arvaa yläkanttiin, tulostetaan "Haettu luku on pienempi", jos alakanttiin niin "Haettu luku on suurempi". Jos pelaaja arvaa oikein, tulostetaan "Arvasit oikein!" ja kysytään "Pelataanko uudestaan? (k/e): ". Alussa ohjelma antaa yleiset ohjeet muodossa "Arvaa luku väliltä 0-99".

# Toteuta ohjelmasi siten, että käyttäjän antamat virhesyötteet kuten kirjaimet tai erikoismerkit eivät aiheuta ohjelman kaatumista.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Arvaa luku väliltä 0-99.
# Arvaus: 10
# Haettu luku on suurempi.
# Arvaus: 30
# Haettu luku on pienempi.
# Arvaus: 20
# Arvasit oikein!
# Pelataanko uudestaan? (k/e): e

# 1st

arpa = rand(100)
valinta = "k"

puts "Arvaa luku väliltä 0-99."

while valinta == "k"
  while(0)
    print "Arvaus: "
    luku = gets.to_i

    if luku == arpa
      puts "Arvasit oikein!"
      break
    elsif luku > arpa
      puts "Haettu luku on pienempi."
    else
      puts "Haettu luku on suurempi."
    end
  end

print "Pelataanko uudestaan? (k/e): "
valinta = gets.chomp
end

# 2nd

puts "Arvaa luku väliltä 0-99."
haettu_luku = rand(100)
valinta = "k"

while valinta.downcase == "k"
  arvaus_oikein = false

  while true
    print "Arvaus: "
    arvaus = gets.to_i

    if arvaus == haettu_luku
      arvaus_oikein = true
      puts "Arvasit oikein!"
      break
    elsif arvaus > haettu_luku
      puts "Haettu luku on pienempi."
    else
      puts "Haettu luku on suurempi."
    end
  end

  print "Pelataanko uudestaan? (k/e): "
  valinta = gets.chomp
end

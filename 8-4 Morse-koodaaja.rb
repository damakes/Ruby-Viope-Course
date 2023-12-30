# Luvun neljännessä tehtävässä tehdään jälleen ainakin jollain tapaa hyödyllinen ohjelma. Tällä kertaa ohjelman tehtävänä on lukea käyttäjän antama tekstisyöte ja muuttaa se Morse-koodiksi.

# Ohjelmaa varten on luotu tiedosto 8-4_tiedosto.txt, joka sisältää kaikki englanninkielen aakkosten Morse-aakkoset muodossa [kirjain]:[morsekoodi] \n [kirjain]:[morsekoodi]\n jne...

# Tiedoston 8-4_tiedosto.txt sisältö on siis seuraavantyylinen:

# A:.-
# B:-...
# C:-.-.
# .
# .
# .
# Z:--..

# ... ja se sisältää kaikki aakkoset väliltä A-Z. Tehtävänäsi on siis luoda ohjelma, joka pyytää käyttäjältä syötteen muodossa "Kirjoita muutettava lause: " ja tämän jälkeen taulukoiden ja merkkijonojen metodeja apuna käyttäen muuttaa käyttäjän syötteen merkki merkiltä kirjainta vastaavaksi morsekoodiksi, erotellen morsekoodimerkit toisistaa "/"-merkillä.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Kirjoita muutettava lause:
# ohjelmointi
# Morse-koodina vastaava on seuraavaa:
# /---/..../.---/./.-../--/---/../-./-/..



# 1st
begin
    tiedosto = File.new("8-4_tiedosto.txt","r")
     rescue
    puts "Aakkostiedostoa ei löydy!"
  end
   aakkoset = []
   kaannokset = []
  tiedosto.each { |rivi| osat = rivi.split(":"); aakkoset << osat[0]; osat[1].chop!; kaannokset << osat[1]}
  tiedosto.close


  puts "Kirjoita muutettava lause: "
  lause = gets
  lause.upcase!
  lause.chop!
  pituus = lause.length
  merkki = 0
  tulos = ""

  while merkki < pituus
    sijainti = aakkoset.index(lause[merkki].chr)
    if sijainti != nil
      tulos << "/"+kaannokset[sijainti]
    end

    merkki += 1
  end

  puts "Morse-koodina vastaava on seuraavaa:"
  puts tulos



# 2nd
  kirjaimet = []
  muunnokset = []
  tiedosto = File.new("8-4_tiedosto.txt","r")
  tiedosto.each { |rivi| osat = rivi.split(":"); kirjaimet << osat[0]; osat[1].chop!; muunnokset << osat[1]}
  tiedosto.close


  puts "Kirjoita muutettava lause: "
  muunna = gets
  muunna.upcase!
  muunna.chop!
  pituus = muunna.length
  merkki = 0
  tulos = ""

  while merkki < pituus
    sijainti = kirjaimet.index(muunna[merkki].chr)
    if sijainti != nil
      tulos << "/"+muunnokset[sijainti]
    end

    merkki += 1
  end

  puts "Morse-koodina vastaava on seuraavaa:\n#{tulos}"

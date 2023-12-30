# Luvun viimeinen tehtävä on hieman poikkeuksellinen, koska tällä kertaa ei luoda itse pääohjelmaa, vaan ainaostaan kirjastomoduuli, joka toteuttaa ohjelman haluaman toiminnon. Itse ohjelmassa poistetaan HTML-muotoilumerkintöjä tekstin seasta ja tulostetaan siistitty teksti ruudulle.

# Tehtävää varten on luotu ohjelmakoodi, joka kutsuu metodia nimeltä siisti; argumentiksi metodi saa yhden täyden HTML-kuvauksen yhtenä pitkänä merkkijonona. lähdekooditiedosto on seuraavanlainen:

# require "7-5"
# tiedosto = File.open("7-5_tiedosto.txt")
# rivit = ""

# tiedosto.each{|rivi| rivit << rivi}
# tiedosto.close

# tulos = siisti(rivit)
# puts tulos

# HTML-kuvaus tarkoittaa verkkosivujen muotoilukuvausta, jossa esimerkiksi tekstipalstat ja otsikoksi tarkoitetut tekstit on merkitty -merkkien väliin tulevilla HTML-kuvauskielen komennoilla.

# Ohjelmalla on siis tarkoitus poistaa hakasulkeiden sisällä olevat muotoiluohjeet luettavasta tulosteesta. Käytännössä tämä tarkoittaa sitä, että tehtävänäsi on määritellä uusi moduuli, jossa on metodi siisti, joka läpikäy argumenttina saamansa merkkijonon ja poistaa html-kuvausmerkit ja niiden sisällön korvaamalla ne välilyönneillä.

# Jos kirjoitettu moduuli toimii oikein, tulostaa ohjelma seuraavaa:


# Example output:

# 			   "Rails-singulariteetti" on tavallinen termi Ruby-
# työkalujen ja ympäristöjen keskuudessa. Se tarkoittaa kehitysympäristölle
# yhteensopivuustasoa, jolla ympäristö pystyy toteuttamaan Ruby on Rails-kehyksen
# toiminnot. Näitä kehitysympäristöjä ei ole montaa.

#    Rubyn suunnittelun lähtökohtana on ollut käytettävyys ja tehokkuus. Kielen
# alkuperäinen suunnittelija, Yukihiro Matsumoto, onkin korostanut tätä ajatusta
# toteamalla, että perinteinen ohjelmointitapa pyrkii selittämään asioita
# tietokoneen ymmärtämällä tavalla huolimatta siitä, että loppujenlopuksi
# tietokoneen tulisi ainoastaan olla laite, jonka avulla ihmiset voivat hyödyntää
# toistensa tekemää työtä.


# Palauttaa merkkijonon, josta on HTML-tagit on poistettu ja korvattu välilyönneillä.

# 1st

def siisti(text)
  text.gsub!(%r{</?[^>]+?>}, '  ')
 return text
end

# 2nd

def siisti(tulos)
  tulos.split(/\<.*?\>/)    # Jakaa merkkijonon HTML-tageihin perustuen säännölliseen lausekkeeseen
       .map(&:strip)         # Poistaa ylimääräiset välilyönnit jokaisesta osasta
       .reject(&:empty?)     # Poistaa tyhjät osat
       .join(' ')            # Yhdistää puhdistetut osat takaisin yhdeksi merkkijonoksi, erotettuna välilyönnillä
       .gsub(%r{</?[^>]+?>},',')  # Korvaa kaikki esiintymät merkkijonossa 'tulos,' merkkijonolla ','
end

# Tiedostojenkäsittelyn kolmas tehtävä keskittyy tiedoston sisällön tutkimiseen. Ohjelmaa varten on luotu tiedosto "5-3_tiedosto.txt", johon on tallennettu pätkä tekstiä. Tee ohjelma, joka laskee kuinka monta merkkiä pitkä tämä teksti on, ja kuinka monta pientä 'a'- ja 'f'-kirjainta tekstistä löytyy.

# Tulos ilmoitetaan muodossa "[pituus] merkkiä: [määrä] a:ta, [määrä] f:ää.". Lopuksi tämä sama tulos kirjoitetaan tiedoston loppuun uudelle riville.

# Toimiessaan oikein ohjelma tulostaa seuraavaa ja kirjoittaa saman tekstin tiedostoon "5-3_tiedosto.txt" tiedoston loppuun uudelle riville:

# Example output:
# 987 merkkiä: 57 a:ta, 7 f:ää.


#coding utf-8

kirj_1 = File.read('5-3_tiedosto.txt').count('a')
kirj_2 =File.read('5-3_tiedosto.txt').count('f')
kirj_3 =File.open('5-3_tiedosto.txt','r')

puts "#{kirj_3.size - 4} merkkiä: #{kirj_1} a:ta, #{kirj_2} f:ää."

kirj_3.close

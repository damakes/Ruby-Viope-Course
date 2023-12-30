
# Luvun viimeisessä tehtävässä harjoitellaan luokkamuuttujien käyttämistä. Tehtävänäsi on luoda luokka Elain, johon tallennettaan jotain perustietoja eri eläimistä.

# Määrittele luokkaan kaksi luokkamuuttujaa edellinen ja maara, jotka alustetaan arvoon "" ja 0. Tämän jälkeen tee luokkaan rakentaja, joka ottaa argumentteina kaksi merkkijonoa, rotu ja nimi. Oliota luotaessa edellisen luodun olion rotu tallenetaan luokkamuuttujaan edellinen. Luonnin yhteydessä maara-muuttuja kasvaa yhdellä.

# Luokkaan tulee myös kolme metodia, tiedot, poista ja tilanne. Tiedot-metodi tulostaa "Olen [olion rotu] ja nimeni on [olion nimi]". Poista tulostaa "[olion nimi] poistettu!" ja vähentää luokkamuuttujaa maara yhdellä. Tilanne tulostaa "Eläimiä on tällä hetkellä [maara] kappaletta. Viimeisin rekisteröity eläin oli [viimeisimmän luodun olion rotu].".

# Tämän jälkeen kopioi seuraava ohjelmakoodi lähdekoodiisi; koodilla kokeillaan luokkamäärittelyn toimintaa:

# koira = Elain.new("koira","Rekku")
# kissa = Elain.new("kissa","Raatelija")
# lintu = Elain.new("kanarialintu","Tirppa")
# koira.tiedot()
# kissa.poista()
# lintu.tilanne()

# Toimiessaan oikein ohjelma tulostaa seuraavan tekstin ja tallentaa sen tiedostoon 9-4_tiedosto.txt

# Example output:
# Olen koira ja nimeni on Rekku!
# Raatelija poistettu!
# Eläimiä on tällä hetkellä 2 kappaletta.
# Viimeisin rekisteröity eläin oli kanarialintu.






class Elain
  @@edellinen = ""
  @@maara = 0

  def initialize(rotu, nimi)
    @@edellinen = rotu
    @@maara += 1
    @rotu = rotu
    @nimi = nimi
  end

  def tiedot()
    puts "Olen #{@rotu} ja nimeni on #{@nimi}!"
  end

  def poista()
    puts "#{@nimi} poistettu!"
    @@maara -= 1
  end

  def tilanne()
    puts "Eläimiä on tällä hetkellä #{@@maara} kappaletta."
    puts "Viimeisin rekisteröity eläin oli #{@@edellinen}."
  end
end


koira  = Elain.new("koira","Rekku")
kissa = Elain.new("kissa","Raatelija")
lintu = Elain.new("kanarialintu","Tirppa")
koira.tiedot()
kissa.poista()
lintu.tilanne()

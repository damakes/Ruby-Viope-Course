# Tässä tehtävässä harjoitellaan olemassaolevan luokan hyödyntämistä ohjelman tekemisessä ja luokan perinnässä.

# Ohjelmaa varten on määritelty tiedostoon "9-4b.rb" seuraava tiedonhallintaluokka:

# class Tietopankki
# def initialize(aseta = "ei tietoja")
# @tiedot = aseta
# end
# def muutatietoja(uusi)
# if uusi.length > 5
# @tiedot = uusi
# else
# puts "Virheellinen syöte"
# end
# end
# def kerrotiedot
# print @tiedot
# end
# def poistatiedot
# @tiedot = "poistettu"
# end
# end

# Tehtävänäsi on tätä luokkaa apunakäyttäen luoda uusi luokka, jossa on metodi "tallennatiedot", joka kirjoittaa luokan tiedot-jäsenmuuttujan arvon tiedostoon 9-4_tiedosto.txt sekä metodi lataatiedot, joka lukee samannimisen tiedoston sisällön ja tallentaa sen muuttujaan.

# Anna luokalle nimeksi "LataavaTietopankki", ja toteuta metodit siten, että esimerkiksi tietojen lataamisyritys ilman tiedostoa ei aiheuta virhetilannetta, ja jos luettu tieto on alle 5 merkkiä, niin muuttujan arvoa ei vaihdeta.

# Tämän jälkeen kopioi seuraava ohjelmakoodi lähdekoodiisi; koodilla kokeillaan luokkamäärittelyn toimintaa:

# testi = LataavaTietopankki.new()
# testi.muutatietoja("Tietopankki on paras pankki.\nJa Lataava vielä parempi.\n")
# testi.kerrotiedot
# testi.lataatiedot
# testi.tallennatiedot

# Toimiessaan oikein ohjelma tulostaa seuraavan tekstin ja tallentaa sen tiedostoon 9-4_tiedosto.txt:

# Example output:
# Tietopankki on paras pankki.
# Ja Lataava vielä parempi.



class Tietopankki
  def initialize(aseta = "ei tietoja")
    @tiedot = aseta
  end

  def muutatietoja(uusi)
    if uusi.length > 5
      @tiedot = uusi
    else
      puts "Virheellinen syöte"
    end
  end

  def kerrotiedot
    print @tiedot
  end

  def poistatiedot
    @tiedot = "poistettu"
  end
end
class LataavaTietopankki < Tietopankki

  def tallennatiedot()
      File.open("9-4_tiedosto.txt","w").puts(@tiedot)
  end

  def lataatiedot()
    begin
      tiedosto = File.open("9-4_tiedosto.txt","r")
      teksti = tiedosto.read
      if teksti.length > 4
        @tiedot = teksti
      end
    rescue
    end
  end

end
testi = LataavaTietopankki.new()
testi.muutatietoja("Tietopankki on paras pankki.\nJa Lataava vielä parempi.\n")
testi.kerrotiedot
testi.lataatiedot
testi.tallennatiedot

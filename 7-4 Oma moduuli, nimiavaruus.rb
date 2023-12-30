# Seitsämännen luvun viimeinen tehtävä on luoda oma moduuli, joka sisältää oman nimiavaruuden. Myös tälläkin kertaa tarkoituksena on luoda itse moduuli, jota käytetään jo olemassaolevan ohjelman toimesta.

# Ohjelmaa varten on luotu seuraavanlainen koodi, joka käyttöönottaa moduulin MuuntajaModuuli ja kutsuu siihen määriteltyjä metodeja:

# require "7-4"

# include MuuntajaModuuli

# MuuntajaModuuli::muunna("Vesihiisi sihisee")
# tulos = MuuntajaModuuli::parillinen?(1024)

# if tulos == true
#   puts "Testattu luku oli parillinen!"
# end


# Tehtävänäsi on siis luoda tämä moduuli, ja määritellä siihen kaksi metodia muunna ja parillinen?. Metodi parillinen? ottaa vastaan yhden kokonaisluvun, ja kokeilee onko luku parillinen vai ei. Jos luku on parillinen, palautetaan true, jos pariton tai epäkelpo arvo, palautetaan false. Testinä voidaan käyttää yksinkertaisesti "jakojäännös kahdella"-testiä. Metodi muunna taas vastaanottaa yhden merkkijonon, josta se muuttaa "i"-kirjaimet tähtimerkiksi ("*"), "h"-kirjaimet väliviiväksi ("-") ja "s"-kirjaimet alaviivoiksi ("_"). Tämän jälkeen metodi tulostaa muunnetun merkkijonon.

# Kun moduuli toimii oikein, tulostaa ohjelma seuraavaa:

# Example output:
# Ve_*_uk_* lu*_taa



module MuuntajaModuuli

  def muunna(tiedosto)
    tiedosto.gsub!("i","*")
    tiedosto.gsub!("h","-")
    tiedosto.gsub!("s","_")
    puts tiedosto
  end

  def parillinen?(tieto)
    tulos = tieto % 2
    if tulos == 0
      return true
    else
      return false
    end
  end
end

# Alkuluvut ovat matemaattisessa mielessä mielenkiintoinen lukujoukko. Ne ovat lukuja, jotka ovat tasan jaollisia ainoastaan itsellään tai yhdellä (eli [alkuluku] % [muu kuin 1 tai itse]!= 0). Tämän ominaisuuden vuoksi ne ovat hyvin suosittuja osia esimerkiksi salausalgoritmeissa, koska niiden katsotaan olevan "turvallisempia" luku. Esimerkiksi 2, 3, 5 ,7 ,11, 13 ja 17 ovat alkulukuja, kun taas esimerkiksi 57 ei ole (jaollinen 3:lla), 1243645614636 ei myöskään (jaollinen 2:lla) jne. Ylipäänsä parilliset luvut eivät voi olla alkulukuja, koska ne ovat aina jaollisia itsensä ja yhden lisäksi 2:lla.

# Toinen mielenkiintoinen ominaisuus luvuissa on, että niiden ennustaminen on vaikeaa. Mitä pidemmälle luonnollisten kokonaislukujen joukossa mennään, sitä satunnaisemmin ja harvemmin vastaan tuleva luku on alkuluku. Itseasiassa näiden lukujen etsintä onkin aikaisemmin ollut eräänlainen kilpailumuoto supertietokoneiden kesken.

# Tässä vaiheessa ei varmaan ole vaikea arvata, että tarkoituksena on tehdä ohjelma, joka etsii alkulukuja. Tee siis ohjelma, joka aloittaa kokonaislukujen läpikäynnin luvusta 2, ja jatkaa siitä ylöspäin käyttäjän antamaan ylärajaan asti. Yläraja määräytyy kysymällä "Monenteenko lukuun asti etsitään?: ". Jos luku on jaollinen jollain aikaisemmin läpikäydyllä luvulla, tulostetaan "[luku] ei ole alkuluku.", jos taas ei ole, voidaan tulostaa "[luku] on alkuluku!".

# Ohjelmasta pystyy tekemään helposti sellaisen, että se jumittaa tietokoneen, koska siihen on helppo tehdä vahingossa useita sisäkkäisiä toistoja. Toteuta ohjelmasi kuitenkin siten, että se pystyy läpikäymään ensimmäiset 2500 lukua ilman isompia ongelmia. Toimiessaan oikein ohjelma tulostaa vaikkapa seuraavaa:


# Example output:
# Monenteenko lukuun asti etsitään?: 10
# 2 on alkuluku!
# 3 on alkuluku!
# 4 ei ole alkuluku.
# 5 on alkuluku!
# 6 ei ole alkuluku.
# 7 on alkuluku!
# 8 ei ole alkuluku.
# 9 ei ole alkuluku.

def alkuluvut (luku)
  for i in 2..luku - 1
    if i % 2 == 0 or i % 3 == 0 and i != 2 and i != 3
      puts "#{i} ei ole alkuluku."
    else
      puts "#{i} on alkuluku!"
    end
  end
end

print "Monenteenko lukuun asti etsitään?: "
luku = gets.to_i
alkuluvut(luku)

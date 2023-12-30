# Luvun kolmas tehtävä liittyy tiedon siistimiseen ja tutkimiseen. Tässä tehtävässä tehdään ohjelma, joka tutkii lukemansa tiedoston sisältöä ja poistaa sieltä virhemerkit.

# Ohjelmaa varten on luotu tiedosto 8-3_tiedosto.txt, joka sisältää lyhyen tekstinpätkän, joka on päässyt pahasti korruptoitumaan täyttymällä ylimääräisillä kohinamerkeillä ja numeroilla:

# Jo o34234.-,h,.-jelmisto&%/&#?%&#&tekniik%(/%/(%&an per(&%%uskur?%#?ssi,.-,.-
# l,.-3,.-4564609507863456la op6etetaan, että ainoa -,.as-,.i-a joka234687890 on
# huon,om,.,.--pi kuin puuttee56l8linen doku645mentoint666i o,-/(?/&?/%&?,.n456,-
# virheellin-en d,.-okumentointi, ja että kaik156ist9a v4566i6isain-,..-,. eläin
# o.n maja46345va645 jo6768k464a sukeltaa6134 sateelta %"#/"%suoj8aan.- ,.D,.,-
# okum4634en-taatio ja kä-,.yttöohjeet 456voiv37at mo6nes-,t24i va564ikutta-a
# turha726lta,.- lisätyöltä, mutta n,-e eivät olekkaan t6,
# -,..45672116162ar4k8oitettu3644 kehittäj,.-26ille ,-,i4545454566666tselleen,
# vaan (/%%(//&?%niill(&)&/()e jotka käyttävä47650t 26heidä,.-n. t456ekemiään
# työkaluja,.-,,.. Ja vaikk46455a ajatus vahingon kiertämään924,.-6 l7478ai,.-
# tta3456misesta voikin ho76478538ukuttaa, olisi siin645ä tapauks,.-essa,.-
# 5h9arkits234emi,-,.s5789en arvoist3456a ennemmin ryhtyä vaikk-,.-a
# autokauppiaaksi.4561835670

# Tehtävänäsi on rakentaa Ruby-ohjelma, joka poistaa tiedoston tekstistä kaikki merkit, jotka eivät ole joko isoja tai pieniä kirjaimia (A-Z, a-z), välilyöntejä tai rivinvaihtoja. Kun ohjelma on saanut tehtävän valmiiksi, tulostaa se siistityn tekstin ruudulle. Tehtävää suunniteltaessa kannattaa hyödyntää apuna ASCII-taulukkoa; kirjainmerkit saavat arvoja väliltä 65..90 (isot kirjaimet) ja 97..122 (pienet kirjaimet). Skandinaaviset merkit (Å,Ä,Ö) ja muut ei-perus-ASCII-kirjaimet luokitellaan tässä tehtävässä kohinan mukana tulleiksi virhemerkeiksi.

# Toimiessaan oikein ohjelma tulostaa seuraavaa:

# Example output:
# Siistitty teksti:


tieto= []
tiedosto = File.open("8-3_tiedosto.txt","r")
tiedosto.each_char{|merkki|
tieto.push(merkki)}
tiedosto.close

siivottu = []
tieto.each do |i|
	if i == "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"or i ==" "or i == "\n"
		siivottu.push(i)
	else
		next
	end
end

tulos = siivottu.join
print "Siistitty teksti:\n#{tulos}"

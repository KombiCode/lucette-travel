addrs = ["Monastikari Square",
"Mount Lycabettus, Athens 114 71, Greece",
"Plaka, Athens, Greece",
"8is Oktovriou 44, Athina 106 82, Greece",
"Dionissiou Areopagitou, Athens Greece",
"A24 Adrianou St. Ancient Agora of Athens, Athens 105 55 Greece",
"Leoforos Amalias 1, Athens 10557 Greece",
"Athinas, Athina 105 51, Greece",
"Psirri, Athina 105 54, Greece, Athens",
"Leoforos Vasilissis Olgas Plaka Athens Greece",
"Adrianou 24, Athens 105 55 Greece",
"Kallirois ave. & Am. Frantzi str. (former Fix factory) 11743 Athens - Greece",
"Aeropagus Hill Athens - Greece",
"Plateia Syntagmatos Athens - Greece",
" Leof. Andrea Siggrou 364, Kallithea 176 74, Greece",
" Leof. Andrea Siggrou 364, Kallithea 176 74, Greece",
"Mitseon 25, Athènes 105 58 Grèce",
"Leof. Vasilissis Sofias 22, Athènes 10675 Grèce",
"Acropolis, Dionysiou Areopagitou Acropolis, Athènes 10558 Grèce",
"Acropolis, Athènes 10558 Grèce"]

ap "je suis la"
ap Geocoder.config

addrs.each do |addr|
  ap addr if Geocoder.search(addr).empty?
end

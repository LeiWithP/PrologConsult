
piso(madera).
piso(ceramica).
piso(parquet).
piso(laminado).
piso(piedra).
piso(alfombra).
piso(marmol).
piso(granito).
piso(azulejo).
piso(baldosa).

ventana(corrediza).
ventana(abatible).
ventana(guillotina).
ventana(batiente).
ventana(proyectante).
ventana(fija).
ventana(plegable).
ventana(oscilobatiente).
ventana(panoramica).
ventana(laminada).

pintura(latex).
pintura(acrilica).
pintura(esmalte).
pintura(satinada).
pintura(ignifuga).
pintura(epoxi).
pintura(antigraffiti).
pintura(transparente).
pintura(mate).

clima(centralizado).
clima(split).
clima(ventana).
clima(portatil).
clima(inverter).

diseno(minimalista).
diseno(rustico).
diseno(moderno).
diseno(vintage).
diseno(industrial).
diseno(clasico).
diseno(ecologico).
diseno(futurista).
diseno(costero).
diseno(bohemio).
diseno(escandinavo).
diseno(colonial).

cocina(americana).
cocina(galera).
cocina(linea).
cocina(isla).
cocina(paralela).
cocina(u).
cocina(lineal).
cocina(angulo).

metros(100).
metros(150).
metros(200).
metros(250).
metros(300).
metros(350).
metros(400).
metros(450).
metros(500).

elementos(F,W,P,AW,D,K,M):-piso(F), ventana(W), pintura(P), clima(AW), diseno(D), cocina(K), metros(M).

costo(madera, 5000).
costo(ceramica, 7000).
costo(parquet, 10000).
costo(laminado, 8000).
costo(piedra, 12000).
costo(alfombra, 6000).
costo(marmol, 15000).
costo(granito, 9000).
costo(azulejo, 7500).
costo(baldosa, 8500).

costo(corrediza, 2000).
costo(abatible, 2500).
costo(guillotina, 3000).
costo(batiente, 2200).
costo(proyectante, 2800).
costo(fija, 1800).
costo(plegable, 3200).
costo(oscilobatiente, 2700).
costo(panoramica, 4000).
costo(laminada, 3500).

costo(latex, 500).
costo(acrilica, 800).
costo(esmalte, 700).
costo(satinada, 900).
costo(ignifuga, 1200).
costo(epoxi, 1500).
costo(antigraffiti, 1000).
costo(transparente, 600).
costo(mate, 750).

costo(centralizado, 2000).
costo(split, 1500).
costo(ventana, 1000).
costo(portatil, 800).
costo(inverter, 2500).

costo(minimalista, 2000).
costo(rustico, 1500).
costo(moderno, 1800).
costo(vintage, 1200).
costo(industrial, 2500).
costo(clasico, 2200).
costo(ecologico, 1700).
costo(futurista, 2800).
costo(costero, 1900).
costo(bohemio, 1600).
costo(escandinavo, 2100).
costo(colonial, 2300).

costo(americana, 3000).
costo(galera, 2500).
costo(linea, 2000).
costo(isla, 3500).
costo(paralela, 2800).
costo(u, 3200).
costo(lineal, 2300).
costo(angulo, 2700).

costo(100, 5000).
costo(150, 7500).
costo(200, 10000).
costo(250, 12500).
costo(300, 15000).
costo(350, 17500).
costo(400, 20000).
costo(450, 22500).
costo(500, 25000).

combinaciones(F,W,P,AW,D,K,M, Presupuesto, Total):-
        elementos(F,W,P,AW,D,K,M), 
        costo(F,CF), costo(W,CW), costo(P,CP), costo(AW,CAW), costo(D,CD), costo(K,CK), costo(M,CM), 
        Total is CF + CW + CP + CAW + CD + CK + CM,
        Total =< Presupuesto.
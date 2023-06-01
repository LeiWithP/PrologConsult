
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

elementos(P,V):-piso(P), ventana(V).

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

combinaciones(P,V, Presupuesto, Total):-
        elementos(P,V), 
        costo(P,CP), costo(V,CV), 
        Total is CP + CV,
        Total =< Presupuesto.
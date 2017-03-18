→ la structure étoile:
La structure étoile est representé par 16 octets dans la RAM,elle contient sa position et son vecteur déplacement:
X : abscices
Y : ordonnées 
DX : vecteur déplacement selon les abscices
DY : vecteur déplacement selon les ordonnées

en C, on utiliserai:
typedef struct etoiles
{ 
	int X;
	int Y;
	int DX;
	int DY;
};

→ la structure bitmap
Pour afficher une étoile, on utilise la bitmap qui est une matrice (16,16) bits ou (128,128) octets.
Pour afficher une étoile de coordonnée (x,y), on allume un bit précis à la ligne [...] et au numéro d'octet [...] et au numero de bit [...]

1_ calcul de la ligne?
	ligne = Y * 16;

2_ calcul du numéro d'octet?
	numéro_d_octet = X / 8;

3_ calcul du numéro de bit?
	num_bit = 7 - (X % 8);

→ les sous programmes

SP_RANDOM:
	pour generer un nombre entre une intervalle [a,b], je lui donne en entrée la graine n;
	cette graine est le nombre de chiffre qu'il y a entre a et b.
	exemple:pour generer une nombre entre [0,7] je lui donne la graine 8,
		pour generer une nombre entre [-8,7] je lui donne la graine 16, je soustrait le resultat par -8 pour avoir le bon intervalle

SP_DEPLACER_ETOILE:
	x <- x + dx;
	y <- y + dy;

	si x ou y dépasse alors, on se place au milieu de l'écran --> (LARGEUR/2, HAUTEUR/2);


SP_ALLUMER:
	mise a un d'un bit dans la bitmap en fonction de (x,y) de l'étoile en question

SP_ETEINDRE:
	mise a zéro d'un bit dans la bitmap en fonction de (x,y) de l'étoile en question



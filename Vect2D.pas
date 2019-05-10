unit Vect2D

interface

type
	vecteur = record
		posx, posy : integer;
	end;

procedure setposx(x: integer; var position: vecteur);
procedure setposy(y: integer; var position: vecteur);
function getposx(position: vecteur): integer;
function getposy(position: vecteur): integer;
function addVecteur(vecteur1, vecteur2: vecteur): vecteur;
function sousVecteur(vecteur1,vecteur2 : vecteur):vecteur;
function prodVectoriel (vecteur1,vecteur2 : vecteur):integer;
function prodScalaire (vecteur1,vecteur2 : vecteur):integer;
function prodParScalaire(vecteur1: vecteur, a: integer):vecteur;

implementation

procedure setposx(x: integer; var position: vecteur);
//But: Donner une valeur à la position de l'objet en abscisse
//Entrée: Le vecteur et la position en x qu'on veut lui donner
//Sortie: /
begin
	position.posx := x;
end;

function getposx(position:vecteur):integer;
//But : Renvoyer la valeur en "x" de la position d'un vecteur
//Entrée : Le vecteur
//Sortie : Sa valeur en "x"
begin
    getposx := position.posx;
end;

procedure setposy(y: integer; var position: vecteur);
//But: Donner une valeur à la position de l'objet en ordonée
//Entrée: Le vecteur et la position en y qu'on veut lui donner
//Sortie: /
begin
	position.posy := y;
end;

function getposy(position:vecteur):integer;
//But : Renvoyer la valeur en "y" de la position d'un vecteur
//Entrée : Le vecteur
//Sortie : Sa valeur en "y"
begin
    getposy := position.posy;
end;

function addVecteur(vecteur1,vecteur2 : vecteur):vecteur;
//But : Additionner deux vecteurs et donner le vecteur résultat
//Entrée : Deux vecteurs à additionner
//Sortie : Le vecteur qui résulte de l'addition
var vectsomme:vecteur;
begin
    vectsomme.posx :=vecteur1.posx+vecteur2.posx;
    vectsomme.posy :=vecteur1.posy+vecteur2.posy;
    addVecteur :=vectsomme;
end;

function sousVecteur(vecteur1,vecteur2 : vecteur):vecteur;
//But : Soustraire deux vecteurs et donner le vecteur résultat
//Entrée : Deux vecteurs à soustraire
//Sortie : Le vecteur qui résulte de la soustraction
var vectsous:vecteur;
begin
    vectsous.posx :=vecteur1.posx-vecteur2.posx;
    vectsous.posy :=vecteur1.posy-vecteur2.posy;
    sousVecteur :=vectsous;
end;

function prodVectoriel (vecteur1,vecteur2 : vecteur):integer;
//But : Faire le Produit de deux vecteurs et donner le déterminant (scalaire)
//Entrée : Deux vecteurs à multiplier
//Sortie : Le déterminant qui résulte de la multiplication
var det: integer;
begin
	det := (vecteur1.posx*vecteur2.posy) - (vecteur1.posy*vecteur2.posx);
	prodVectoriel := det;
end;

function prodScalaire (vecteur1,vecteur2 : vecteur):integer;
//But : Faire le Produit scalaire de deux vecteurs
//Entrée : Deux vecteurs à multiplier
//Sortie : Le scalaire
var scal: integer;
begin
	scal := (vecteur1.posx*vecteur2.posx) + (vecteur1.posy*vecteur2.posy);
	prodScalaire := scal;
end;

function prodParScalaire(vecteur1: vecteur, a: integer):vecteur;
//But : Faire le produit d'un vecteur par un scalaire
//Entrée : Un vecteur et un scalaire a
//Sortie : Le vecteur qui résulte du produit par scalaire
var vectscal:vecteur;
begin
    vectscal.posx :=vecteur1.posx*a
    vectscal.posy :=vecteur1.posy*a
    prodParScalaire :=vectscal;
end;

end
unit selection;
{   INFO  DEVELOPPEMENT pour ajouter un nouveau type de calcul

1)
Dans l'inspecteur d'objets, selectionner TreeView1,
double-ciquer sur "Treenodes" affect� � la propri�t� Items
La fen�tre "Editeur d'�l�ments TreeView" apparait
Faire "Nouveau" ou "Sous-�l�ment"
Renseigner texte et Indice-�tat (qui va devenir le param�tre envoy� � la fonction
select_op)
Mettre Indice image � 4 si le nouveau calcul poss�de l'option "difficult� +"
sinon le laisser � 0 .

2)
dans calculs.pas
Cr�er une nouvelle classe top_xxxxx (en faisant un copier coller des d�clarations
d'une classe top_...  d�j� existante.
Cr�er automatiquement l'impl�mentation des focntions  � l'aide de trl+Shift+C
Faire un copi�-coller du contenu de la fonction get_info d'une autre classe et
affecter les bonnes valeurs pour inf_titre et info_ennonce.
Cr�er le code pour la g�n�ration du code latex dans la fonction genere_formule
Les fonction des classes toptions_aleatoires et troutines dans le module base.pas
sont l� pour simplifier la t�che.

3)
Dans le module selection.pas,
dans la fonction select_op,
ajouter un ligne commandant la cr�ation d'une instance la nouvelle classe,
la valeur de "reference" �tant celle renseign�e dans Indice-�tat dans 1)

 }

interface
   uses SysUtils, base, calculs;

  function  select_op(reference : integer): i_calculs;

implementation

function  select_op(reference : integer): i_calculs;
begin
   case reference of
      1: result := top_fractions.create;
      2: result := top_simplication.create;
      3: result := top_developpent.create;
      4: result := top_x_puiss10.create;
      5: result := top_factorisation.create;
      6: result := top_Additionencol.create;
      7: result := top_nb_relatifs.create;
      8: result := top_multiplications.create;
      9: result := top_Simplifie_expr.create;
      10: result := top_distributivite.create;
{      11: result := .create;
      12: result := .create;
      13: result := .create;
      14: result := .create;
      15: result := .create;
      : result := .create;
      : result := .create;
      : result := .create;
      : result := .create;
}


   else
      result := top_erreur.create('reference incorrecte: ' + inttostr(reference));
   end;

end;


end.

unit selection;
{   INFO  DEVELOPPEMENT pour ajouter un nouveau type de calcul

1)
Dans l'inspecteur d'objets, selectionner TreeView1,
double-ciquer sur "Treenodes" affecté à la propriété Items
La fenêtre "Editeur d'éléments TreeView" apparait
Faire "Nouveau" ou "Sous-élément"
Renseigner texte et Indice-état (qui va devenir le paramètre envoyé à la fonction
select_op)
Mettre Indice image à 4 si le nouveau calcul possède l'option "difficulté +"
sinon le laisser à 0 .

2)
dans calculs.pas
Créer une nouvelle classe top_xxxxx (en faisant un copier coller des déclarations
d'une classe top_...  déjà existante.
Créer automatiquement l'implémentation des focntions  à l'aide de trl+Shift+C
Faire un copié-coller du contenu de la fonction get_info d'une autre classe et
affecter les bonnes valeurs pour inf_titre et info_ennonce.
Créer le code pour la génération du code latex dans la fonction genere_formule
Les fonction des classes toptions_aleatoires et troutines dans le module base.pas
sont là pour faciliter la tâche.

3)
Dans le module selection.pas,
dans la fonction select_op,
ajouter un ligne commandant la création d'une instance la nouvelle classe,
la valeur de "reference" étant celle renseignée dans Indice-état dans 1)

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
      11: result := top_rel_pythagore.create;
      12: result := top_arrondis.create;
      13: result := top_add_fractions.create;
      14: result := top_fractions_empilees.create;
      15: result := top_fraction_etages2.create;
      16: result := top_fraction_etages3.create;
      17: result := top_puiss10_2_decimal.create;
      18: result := top_decimal2puiss10.create;
      19: result := top_vers_n_scientfq.create;
      20: result := top_de_n_scientfq.create;
      21: result := top_op_avec_puiss10.create;
      22: result := top_frac_avec_puiss10.create;
      23: result := top_eq1degre.create;
      24: result := top_conv_unites.create;
      25: result := top_conv_unites_ns.create;
      26: result := top_conv_W_dec.create;
      27: result := top_conv_W_ns.create;
      28: result := top_conv_aires.create;
      29: result := top_conv_volumes.create;
      30: result := top_conv_aires_ns.create;
      31: result := top_conv_volumes_ns.create;
      32: result := top_op_avec_puissances.create;
{      : result := .create;
      : result := .create;
      : result := .create;
      : result := .create;
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

unit selection;

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
{      10: result := .create;
      11: result := .create;
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

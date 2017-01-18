unit calculs;

interface

uses SysUtils, base;


type

  top_fractions = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_simplication = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_developpent = class(tinterfacedobject, i_calculs)
    function genere_formule : string; 
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_x_puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_factorisation = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_Additionencol = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_nb_relatifs = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;


  top_multiplications = class(tinterfacedobject, i_calculs)
    function genere_formule : string; 
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_Simplifie_expr = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

  top_distributivite = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;

implementation


{ top_fractions }

constructor top_fractions.create;
begin
   inherited create;
end;

destructor top_fractions.destroy;
begin
  inherited;
end;

function top_fractions.genere_formule: string;
var
   num1, num, den, op : string;

begin
   den := op_alea.splage(2,9);
   num1 := op_alea.spl1_9;
   while routines.s_pgcd(num1, den) > 1 do begin
      num1 := op_alea.spl1_9;
   end;
   //result := '\frac{' + num + '}{' + den + '}' ;
   result := format('\frac{%s}{%s}', [num1, den]);
   op := op_alea.operation_3;
   if (op = '\times') or diff_plus then den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while (routines.s_pgcd(num, den) > 1) or ((not diff_plus)  and (op <> '\times') and (num = num1 ) )do begin
      num := op_alea.spl1_9;
   end;
   //result := result + op + '\frac{' + num + '}{' + den + '}=' ;
   result := format('%s%s\frac{%s}{%s}=', [result, op, num, den]);
end;

function top_fractions.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Sans l''option difficulté plus, les dénominateurs sont les même lorsque les opérations sont des additions ou des soustractions';
   else
      result := '';
   end;
end;

{ top_simplication }

constructor top_simplication.create;
begin
  inherited;

end;

destructor top_simplication.destroy;
begin

  inherited;
end;

function top_simplication.genere_formule: string;
var
   n1,  d1, c, lim1, lim2, num, den : integer;
begin
   lim1 := 10;
   lim2 := 11;
   n1 := op_alea.iplage(2,lim1);
   d1 := op_alea.iplage(2,lim1);
   while d1 = n1 do d1 := op_alea.iplage(2,lim1);
   c := op_alea.iplage(2,lim2);
   num := n1*c;
   den := d1*c;
   result := format('\frac{%d}{%d}=', [num, den]);
end;

function top_simplication.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
   else
      result := '';
   end;
end;

{ top_x_puiss10 }

constructor top_x_puiss10.create;
begin
   inherited create;
end;

destructor top_x_puiss10.destroy;
begin

  inherited;
end;

function top_x_puiss10.genere_formule: string;
var
   a, b, o : string;
begin
   a := op_alea.snombre(5, -3 ,5);
   b := op_alea.spuiss10(-3, 3);
   if diff_plus then o := op_alea.x_div else o := '\times';
   while b = '1' do b:= op_alea.spuiss10(-3, 3);
   result := format('%s%s%s=', [a, o, b]);
end;



function top_x_puiss10.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'L''option "difficulté +" ajoute aussi des divisions';
   else
      result := '';
   end;
end;

{ top_developpent }

constructor top_developpent.create;
begin
   inherited create;
end;

destructor top_developpent.destroy;
begin
  inherited;
end;

function top_developpent.genere_formule: string;
var
   lettre , signe1 , signe2, nb1, nb2, st : string;
   i : integer;
begin
   result := '';
   lettre := op_alea.caracteres('xyztuvab');
   for i := 1 to 2 do begin
      signe1 := op_alea.signe;
      signe2 := op_alea.signe;
      nb1 := op_alea.spl1_9;
      nb2 := op_alea.spl1_9;
      if nb1 = '1' then nb1 := '';
      if signe1 = '+' then signe1 := '';
      if op_alea.binaire then begin // lettre en premier
         st := format( '(%s%s%s%s%s)', [signe1, nb1, lettre, signe2, nb2]);
      end else begin
         st := format( '(%s%s%s%s%s)', [signe1, nb2, signe2, nb1, lettre]);
      end;
      result := result + st;
   end;
   result := result + '=' ;
end;

function top_developpent.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
   else
      result := '';
   end;
end;

{ top_nb_relatifs }

constructor top_nb_relatifs.create;
begin

end;

destructor top_nb_relatifs.destroy;
begin

  inherited;
end;

function top_nb_relatifs.genere_formule: string;
var
   a, b : string;
   sa, sb, so : string;
begin
   a := op_alea.spl1_9;
   b := op_alea.spl1_9;
   so := op_alea.operation_3;
   sa := op_alea.signe;
   sb := op_alea.signe;
   result := (format('( %s%s ) %s ( %s%s ) =', [sa, a, so, sb, b ]));
end;



function top_nb_relatifs.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
   else
      result := '';
   end;
end;

{ top_factorisation }

constructor top_factorisation.create;
begin
   inherited;

end;

destructor top_factorisation.destroy;
begin

  inherited;
end;

function top_factorisation.genere_formule: string;
var
   lettre1, lettre2, lettre3, lettre4, signe1 , signe2, nb1, nb2, nb3 , nb4, nb5, nb6, st : string;
   //i : integer;
begin  // 3*4xy - 7*4xz
   result := '';
   lettre1 := op_alea.caracteres('xyztuvab');
   lettre2 := op_alea.caracteres('xyztuvab');
   nb1 := op_alea.splage(2,9);
   nb2 := op_alea.splage(2,9);
   nb3 := op_alea.splage(2,9);
   while lettre2 = lettre1 do lettre2 := op_alea.caracteres('xyztuvab');
   lettre3 := op_alea.caracteres('xyztuvab');
   while (lettre3 = lettre1) or (lettre3 = lettre2) do lettre3 := op_alea.caracteres('xyztuvab');
   if op_alea.binaire then lettre4 := lettre1 else lettre4 := lettre2;
   if op_alea.binaire then begin
      st := lettre3;
      lettre3 := lettre4;
      lettre4 := st;
   end;
   while nb2 = nb1 do nb2 := op_alea.splage(2,9);;
   nb3 := op_alea.splage(2,9);
   while (nb3 = nb1) or (nb3 = nb2) do nb3 := op_alea.splage(2,9);
   if op_alea.binaire then nb4 := nb1 else nb4 := nb2;
   if op_alea.binaire then begin
      st := nb3;
      nb3 := nb4;
      nb4 := st;
   end;
   signe1 := op_alea.signe;
   signe2 := op_alea.signe;
   if signe1 = '+' then signe1 := '';
   if diff_plus then begin
      nb5 := inttostr(strtoint(nb1 )* strtoint(nb2));
      nb6 := inttostr(strtoint(nb3 )* strtoint(nb4));
      result := format( '%s%s%s%s%s%s%s%s=', [signe1, nb5, lettre1, lettre2, signe2, nb6, lettre3, lettre4]);
   end else begin
      result := format( '%s%s\times%s%s%s%s%s\times%s%s%s=', [signe1, nb1, nb2, lettre1, lettre2, signe2, nb3, nb4, lettre3, lettre4]);
   end;
// 3*4xy - 7*4xz
end;



function top_factorisation.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
   else
      result := '';
   end;
end;


{ top_multiplications }

constructor top_multiplications.create;
begin

end;

destructor top_multiplications.destroy;
begin

  inherited;
end;

function top_multiplications.genere_formule: string;
var
   a, b : string;
   p : integer;
begin
   if diff_plus then p := -2 else p := 0;
   a := op_alea.snombre(4, p , 0);
   while a = '1' do a:= op_alea.snombre(4, p , 0);
   b := op_alea.snombre(4, p , 0);
   while b = '1' do b:= op_alea.snombre(4, p , 0);
   result := format('%s\times%s=', [a, b]);
   sl_corrige.Add(routines.mult(a, b));
end;

function top_multiplications.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Cliquer sur le bouton "Corrigé" pour obtenir les résultats des multiplications.' +
            'L''option "difficulté +" ajoute des nombres décimaux';
   else
      result := '';
   end;
end;


{ top_Additionencol }

constructor top_Additionencol.create;
begin

end;

destructor top_Additionencol.destroy;
begin

  inherited;
end;

function top_Additionencol.genere_formule: string;
const
   nb_nombre : integer = 10;
var
   i, x : integer;
   a, b, st : string;
begin // \begin{tabular}{r@{.}l}3&14159\\
   result := '\begin{tabular}{l}';  //{r@{.}l}';
   x := 0;
   for i := 1 to nb_nombre do begin
      a := op_alea.spl0_9;
      b := op_alea.splage(10,109) ;
      if length(b) > 2 then b := copy(b, 2, 2);
      if i = nb_nombre then result := result + '\underline{';
      result := result + '\hspace{10}' + a + ',' + b ;
      x := x + strtoint(a + b);
      if i = nb_nombre then result := result + '}\\' else result := result + '\\'
   end;
   st := inttostr(x);
   insert(',',st, length(st) - 1);
   sl_corrige.Add(st);
   result := result + '\\\vspace{25} \\\end{tabular}';
end;

function top_Additionencol.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Cliquer sur le bouton "Corrigé" pour obtenir les résultats des additions';
   else
      result := '';
   end;
end;

{ top_Simplifie_expr }

constructor top_Simplifie_expr.create;
begin

end;

destructor top_Simplifie_expr.destroy;
begin

  inherited;
end;

function top_Simplifie_expr.genere_formule: string;
var
   n, i, k, k1, k2, k3, kpre : integer;
   lettre, signe, nb : string;
   ok : boolean;
begin
   lettre := op_alea.caracteres('xyztuvab');
   repeat
      n := op_alea.iplage(3, 6) ;
      result := '';
      k := 0; k1 := 0; k2 := 0 ; k3 := 0;
      for i := 1 to n do begin
         signe := op_alea.signe;
         nb := op_alea.slogpl(1, 39);
         kpre := k;
         while k = kpre do k := op_alea.iplage(1, 3) ;
         if (i = 1 ) and (signe = '+') then signe := '';
         if k = 1 then begin
            inc(k1);
            result := result + signe + nb ;
         end else if k = 2 then begin
            inc(k2);
            if (nb = '1') then nb := '';
            result := result + signe + nb + lettre;
         end else if k = 3 then begin
            inc(k3);
            if (nb = '1') then nb := '';
            result := result + signe + nb + lettre + '^{3$2}';
         end;
      end;
      ok := (k1 > 1) or (k2 > 1) or (k3 > 1) ;
   until ok ;
   result := result + '=';
end;


function top_Simplifie_expr.get_info(type_info : ttype_info): string;
begin
   case type_info of
      info_titre   : result := 'Simplification d''expressions littérales';
      info_ennonce : result := 'Simplifier les expressions';
   else
      result := '';
   end;
end;

{ top_didributivite }

constructor top_distributivite.create;
begin

end;

destructor top_distributivite.destroy;
begin

  inherited;
end;

function top_distributivite.genere_formule: string;
var
   i, n, prob : integer;
   lettres, nb, s, lpre , cat :string ;
begin
   result := '';
   n := op_alea.iplage(2, 4);
   if diff_plus then begin
      prob := 10;
      cat := 'xyz'
   end else begin
      prob := 0;
      cat := 'xy'
   end;
   for i := 1 to n do begin
      lettres := op_alea.lettres(cat, 0, 2, prob, 0);
      nb := op_alea.spl1_9;
      s := op_alea.signe;
      if (i = 1) and (s = '+') then s := '';
      if (nb = '1') then nb := '';
      result := result + s + nb + lettres + '(';
      
      lettres := op_alea.lettres(cat, 0, 2, prob, 0);
      lpre := lettres;
      nb := op_alea.spl1_9;
      s := op_alea.signe;
      if  s = '+' then s := '';
      if (lettres <> '') and (nb = '1') then nb := '';
      result := result + s + nb + lettres ;

      lettres := lpre;
      while (lpre = lettres) do lettres := op_alea.lettres(cat, 0, 2, prob, 0);
      nb := op_alea.spl1_9;
      s := op_alea.signe;
      if (lettres <> '') and (nb = '1') then nb := '';
      result := result + s + nb + lettres + ')';
   end;
   result := result + '=';
end;

function top_distributivite.get_info(type_info: ttype_info): string;
begin
   case type_info of
      info_titre       : result := 'Distributivité';
      info_ennonce     : result := 'Développer les expressions puis simplifier le résultat';
      info_commentaire : result := 'Lorsque l''option difficulté + n''est pas activée, il devient presque systématique de pouvoir simplifier le résultat en en additionnant quelques termes';
   else
      result := '';
   end;
end;

end.

unit calculs;

interface

uses SysUtils, base;


type

  top_fractions = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_puiss10_2_decimal = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_decimal2puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_vers_n_scientfq = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_de_n_scientfq = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_op_avec_puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_frac_avec_puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_add_fractions = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_fractions_empilees = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_fraction_etages2 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_fraction_etages3 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_simplication = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_developpent = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_x_puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_factorisation = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_Additionencol = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_nb_relatifs = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;


  top_multiplications = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_Simplifie_expr = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_distributivite = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_rel_pythagore = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_arrondis = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_eq1degre = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_unites = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_unites_ns = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_W_dec = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_W_ns = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_aires = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_aires_ns = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_volumes = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_conv_volumes_ns = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_op_avec_puissances = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

  top_ident_remarquables = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;
  top_produit_a_zero = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    function get_info(type_info : ttype_info): ansistring;
    constructor create;
    destructor destroy;  override;
  end;

implementation

function conv_volumes(ns : boolean; alt : boolean):string;   //notation scientifique
var
   u, u1, u2, prf1, ori, nb,lettres : string;
   r1, r2, l : integer;
function choix_prefixe( origine : string; var rang : integer): string;
begin
   repeat
      //result := op_alea.caracteres('khbzdcm');
      lettres := 'khbzdcm';
      l := op_alea.iplage(1, length(lettres));
      result := lettres[l];
      if result = 'b' then result := 'da';
      if result = 'z' then result := '';
      rang := 4 -l;
   until result <> origine;
end;
function unite(prf : string): string;
begin
   result := prf + u;
   if alt and op_alea.binaire then begin
      if prf = 'd' then
         result := 'l'
      else if prf = 'c' then
         result := 'ml'
      else if prf = 'm' then
         result := '\mu l'   ;
   end ;
end;
begin
   u := 'm^{3$3}' ;
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori, r1) ;
   u1 := unite(prf1);
   r2 := 0;
   if diff_plus then  u2 := unite(choix_prefixe(prf1, r2)) else u2 := u;
   r1 := (r1-r2) * 3;
   if ns then
      nb := op_alea.snombre_scientifique(4, -7 - r1 , 3 - r1)
   else
      nb := op_alea.snombre(4, -7 - r1 , 3 - r1) ;
   result := nb + '\hspace{1}' + u1 + '=\hspace{200}' + u2 ;
   max_car := 1000;
end;

function conv_aires(ns : boolean; alt : boolean):string;
var
   u, u1, u2, ori, prf1, nb,lettres : string;
   r1, r2, l : integer;
function choix_prefixe( origine : string; var rang : integer): string;
begin
   repeat
      //result := op_alea.caracteres('khbzdcm');
      lettres := 'khbzdcm';
      l := op_alea.iplage(1, length(lettres));
      result := lettres[l];
      if result = 'b' then result := 'da';
      if result = 'z' then result := '';
      rang := 4 -l;
   until result <> origine;
end;
function unite(prf : string): string;
begin
   result := prf + u;
   if alt and op_alea.binaire then begin
      if prf = 'da' then
         result := 'a'
      else if prf = '' then
         result := 'ca'
      else if prf = 'h' then
         result := 'ha' ;
   end ;
end;
begin
   u := 'm^{3$2}' ;
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori, r1) ;
   u1 := unite(prf1);
   r2 := 0;
   if diff_plus then  u2 := unite(choix_prefixe(prf1, r2)) else u2 := u;
   r1 := (r1-r2) * 2;
   if ns then
      nb := op_alea.snombre_scientifique(4, -7 - r1 , 3 -r1) 
   else
      nb := op_alea.snombre(4, -7 - r1 , 3 -r1) ;
   //nb := op_alea.snombre(4, -7 , 3) ;
   result := nb + '\hspace{1}' + u1 + '=\hspace{200}' + u2 ;
   max_car := 1000;
end;

function operations_fractions(difpl: boolean): string;
var
   num1, num, den, op : string;
   n1, n2, d1, d2 , n, d, p : integer;
begin
   den := op_alea.splage(2,9);
   num1 := op_alea.spl1_9;
   while routines.s_pgcd(num1, den) > 1 do begin
      num1 := op_alea.spl1_9;
   end;
   //result := '\frac{' + num + '}{' + den + '}' ;
   result := format('\frac{%s}{%s}', [num1, den]);
   n1 := strtoint(num1);
   d1 := strtoint(den);
   op := op_alea.operation_3;
   if (op = '\times') or difpl then den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while (routines.s_pgcd(num, den) > 1) or ((not difpl)  and (op <> '\times') and (num = num1 ) )do begin
      num := op_alea.spl1_9;
   end;
   //result := result + op + '\frac{' + num + '}{' + den + '}=' ;
   result := format('%s%s\frac{%s}{%s}', [result, op, num, den]);
   n2 := strtoint(num);
   d2 := strtoint(den);
   if op = '\times' then begin
      n := n1 * n2;
      d := d1 * d2;
   end else begin
      if d1 <> d2 then begin
         n1 := n1 * d2;
         n2 := n2 * d1;
         d := d1 * d2;
      end else
         d := d1;
      if op = '+' then n := n1 + n2 else n := n1 - n2;
   end;
   p := routines.pgcd(n, d);
   if p > 1 then begin
      n := n div p;
      d := d div p;
   end;
   pile.insert(0, inttostr(n));
   pile.insert(0, inttostr(d));
end;

function addition_fractions(difpl: boolean; diff2 : boolean = false): string;
var
   num1, num, den, op, sgn, snum, sden : string;
   b1, b2 : boolean;
   n1, n2, d1, d2 , n, d, p : integer;
begin
   sden := '';
   b1 := op_alea.UnSurX(4) and difpl;
   b2 := op_alea.binaire;
   den := op_alea.splage(2,9);
   num1 := op_alea.spl1_9;
   while routines.s_pgcd(num1, den) > 1 do begin
      num1 := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   if diff2 then begin
      sden := op_alea.signe;
      if sden = '+' then sden := '';
   end;
   sgn := op_alea.signe;
   if sgn = '+' then sgn := '';
   if b1 and b2 then begin
      result := snum + num1;
      d1 := 1;
      n1 := strtoint(result);
   end else begin
      result := format('%s\frac{%s%s}{%s%s}', [sgn, snum, num1, sden, den]);
      n1 := strtoint(snum + num1);
      d1 := strtoint(den);
      if (sgn = '-') xor (sden = '-') then n1 := - n1;
   end;

   op := op_alea.signe;
   if difpl then den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while (routines.s_pgcd(num, den) > 1 )do begin
      num := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   if diff2 then begin
      sden := op_alea.signe;
      if sden = '+' then sden := '';
   end;
   if b1 and not b2 then begin
      result := result + op + num  ;
      d2 := 1;
      n2 := strtoint(op + num);
   end else begin
      result := format('%s%s\frac{%s%s}{%s%s}', [result, op, snum, num, sden, den]);
      n2 := strtoint(snum + num);
      d2 := strtoint(den);
      if (op = '-') xor (sden = '-') then n2 := - n2;
   end;
   if d1 <> d2 then begin
      n1 := n1 * d2;
      n2 := n2 * d1;
      d := d1 * d2;
   end else
      d := d1;
   n := n1 + n2  ;
   p := routines.pgcd(n, d);
   if p > 1 then begin
      n := n div p;
      d := d div p;
   end;
   pile.insert(0, inttostr(n));
   pile.insert(0, inttostr(d));
end;


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
begin
   result := operations_fractions(diff_plus) + '=';
end;

function top_fractions.get_info(type_info : ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Sans l''option difficulté plus, les dénominateurs sont les même lorsque les opérations sont des additions ou des soustractions';
   else
      result := '';
   end;
end;

{ top_add_fractions }

constructor top_add_fractions.create;
begin

end;

destructor top_add_fractions.destroy;
begin

  inherited;
end;

function top_add_fractions.genere_formule: string;
begin
   result := addition_fractions(diff_plus, diff_plus) + '=';
(*var
   num1, num, den, op, sgn, snum : string;
   b1, b2 : boolean;
begin
   b1 := op_alea.UnSurX(4) and diff_plus;
   b2 := op_alea.binaire;
   den := op_alea.splage(2,9);
   num1 := op_alea.spl1_9;
   while routines.s_pgcd(num1, den) > 1 do begin
      num1 := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   sgn := op_alea.signe;
   if sgn = '+' then sgn := '';
   if b1 and b2 then
      result := sgn + num1
   else
      result := format('%s\frac{%s%s}{%s}', [sgn, snum, num1, den]);
   op := op_alea.signe;
   if diff_plus then den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while (routines.s_pgcd(num, den) > 1 )do begin
      num := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   if b1 and not b2 then
      result := result + op + num + '='
   else
      result := format('%s%s\frac{%s%s}{%s}=', [result, op, snum, num, den]); *)
end;

function top_add_fractions.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Sans l''option difficulté plus, les fractions ont les mêmes dénominateurs, avec, les dénominateurs peuvent être négatifs';
   else
      result := '';
   end;
end;

{ top_fraction_etages3 }

constructor top_fraction_etages3.create;
begin

end;

destructor top_fraction_etages3.destroy;
begin

  inherited;
end;

function top_fraction_etages3.genere_formule: string;
var
   num, den : string;
   n, d, p : integer;
begin
   num := addition_fractions(true, diff_plus);
   den := addition_fractions(true, diff_plus);
   while strtoint(pile.Strings[1]) = 0  do begin
      pile.Delete(0);
      pile.Delete(0);
      den := addition_fractions(true);
   end;
   result := format('\frac{%s}{%s}=', [num, den]);
   n := strtoint(pile.Strings[3]) * strtoint(pile.Strings[0]);
   d := strtoint(pile.Strings[2]) * strtoint(pile.Strings[1]);
   p := routines.pgcd(n , d);
   if p > 1 then begin
      n := n div p;
      d := d div p;
   end;
   if ((n < 0) and (d < 0)) or ((n > 0) and (d < 0)) then begin
      n := -n;
      d := -d;
   end;
   if d = 1 then
      sl_corrige.Add(inttostr(n))
   else
      sl_corrige.Add(inttostr(n) + '/' + inttostr(d));
end;

function top_fraction_etages3.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : begin result := 'Présence du corrigé';
                         ajout_ligne(result,'Avec l''option difficulté plus, les dénominateurs peuvent être négatifs'); end;
   else
      result := '';
   end;
end;

{ top_fraction_etages2 }

constructor top_fraction_etages2.create;
begin

end;

destructor top_fraction_etages2.destroy;
begin

  inherited;
end;

function top_fraction_etages2.genere_formule: string;
var
   num, den : string;
   n, d, p : integer;
begin
   num := operations_fractions(true);
   den := operations_fractions(true);
   while strtoint(pile.Strings[1]) = 0  do begin
      pile.Delete(0);
      pile.Delete(0);
      den := operations_fractions(true);
   end;
   result := format('\frac{%s}{%s}=', [num, den]);
   n := strtoint(pile.Strings[3]) * strtoint(pile.Strings[0]);
   d := strtoint(pile.Strings[2]) * strtoint(pile.Strings[1]);
   p := routines.pgcd(n , d);
   if p > 1 then begin
      n := n div p;
      d := d div p;
   end;
   if ((n < 0) and (d < 0)) or ((n > 0) and (d < 0)) then begin
      n := -n;
      d := -d;
   end;
   if d = 1 then
      sl_corrige.Add(inttostr(n))
   else
      sl_corrige.Add(inttostr(n) + '/' + inttostr(d));
end;

function top_fraction_etages2.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : result := 'Présence du corrigé';
   else
      result := '';
   end;
end;

{ top_fractions_empilees }

constructor top_fractions_empilees.create;
begin

end;

destructor top_fractions_empilees.destroy;
begin

  inherited;
end;

function top_fractions_empilees.genere_formule: string;
var
   num1, num, den, op, sgn, snum, sden : string;
   b1, b2 : boolean;
   //numerateur , denominateur :string;
begin
   b1 := op_alea.UnSurX(4) and diff_plus;
   b2 := op_alea.binaire;
   den := op_alea.splage(2,9);
   num1 := op_alea.spl1_9;
   while routines.s_pgcd(num1, den) > 1 do begin
      num1 := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   sden:= op_alea.signe;
   if sden = '+' then sden := '';
   sgn := op_alea.signe;
   if sgn = '+' then sgn := '';
   if b1 and b2 then
      result := sgn + num1
   else
      result := format('%s\frac{%s%s}{%s%s}', [sgn, snum, num1, sden, den]);
   op := op_alea.signe;
   if op = '+' then op := '';
   den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while (routines.s_pgcd(num, den) > 1 )do begin
      num := op_alea.spl1_9;
   end;
   snum := op_alea.signe;
   if snum = '+' then snum := '';
   sden:= op_alea.signe;
   if sden = '+' then sden := '';
   if b1 and not b2 then
      //result := result + op + num
      result := format('\frac{%s}{%s%s}=',[result, snum, num])
   else
      //result := format('%s%s\frac{%s%s}{%s}=', [result, op, snum, num, den]);
      result := format('\frac{%s}{%s\frac{%s%s}{%s%s}}=',[result, op, snum, num, sden, den]);

end;

function top_fractions_empilees.get_info(
  type_info: ttype_info): ansistring;
begin
   result := '';
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
   //s : string;
begin
   lim1 := 10;
   lim2 := 11;
   n1 := op_alea.iplage(2,lim1);
   d1 := op_alea.iplage(2,lim1);
   while d1 = n1 do d1 := op_alea.iplage(2,lim1);
   c := op_alea.iplage(2,lim2);
   num := n1*c;
   den := d1*c;
   if diff_plus then begin
      if op_alea.binaire then num := -num;
      if op_alea.binaire then den := - den;
   end;
   result := format('\frac{%d}{%d}=', [num, den]);
end;

function top_simplication.get_info(type_info : ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Simplification de fractions';
      info_ennonce : result := 'Simplifier les fractions';
   else
      result := 'L''option "difficulté +" ajoute des valeurs négatives';
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



function top_x_puiss10.get_info(type_info : ttype_info): ansistring;
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

function top_developpent.get_info(type_info : ttype_info): ansistring;
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



function top_nb_relatifs.get_info(type_info : ttype_info): ansistring;
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



function top_factorisation.get_info(type_info : ttype_info): ansistring;
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

function top_multiplications.get_info(type_info : ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := '';
      info_ennonce : result := '';
      info_commentaire : begin result := 'Cliquer sur le bouton "Corrigé" pour obtenir les résultats des multiplications.' ;
                         ajout_ligne(result, 'L''option "difficulté +" ajoute des nombres décimaux');  end;
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

function top_Additionencol.get_info(type_info : ttype_info): ansistring;
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


function top_Simplifie_expr.get_info(type_info : ttype_info): ansistring;
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
      while routines.equivalent( lpre , lettres) do lettres := op_alea.lettres(cat, 0, 2, prob, 0);
      nb := op_alea.spl1_9;
      s := op_alea.signe;
      if (lettres <> '') and (nb = '1') then nb := '';
      result := result + s + nb + lettres + ')';
   end;
   result := result + '=';
end;

function top_distributivite.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Distributivité';
      info_ennonce     : result := 'Développer les expressions puis simplifier le résultat';
      info_commentaire : result := 'Lorsque l''option difficulté + n''est pas activée, il devient presque systématique de pouvoir simplifier le résultat en en additionnant quelques termes';
   else
      result := '';
   end;
end;

{ top_rel_pythagore }

constructor top_rel_pythagore.create;
begin
   //
end;

destructor top_rel_pythagore.destroy;
begin
   //
  inherited;
end;

function top_rel_pythagore.genere_formule: string;
var
   n, la, lb, lc, s : integer;
   //a,b,c : single;
begin
   if op_alea.UnSurX(3) then begin
      repeat
         la := op_alea.iplage(5, 50);
         lb := op_alea.iplage(la, 90);
         s := sqr(la) + sqr(lb);
         lc := round(sqrt( s));
      until sqr(lc) <> s ;
      sl_corrige.Add(format('ABC\ n''est\ pas\ rectangle\ :\ %d+%d<>%d',[sqr(la), sqr(lb), sqr(lc)]));
   end else begin
      repeat
         n := op_alea.iplage(1, 49);
      until routines.ijamais_utilise(n);
      la := tab_pythagore1[n];
      lb := tab_pythagore2[n];
      lc := tab_pythagore3[n];
      sl_corrige.Add(format('ABC\ est\ rectangle\ :\ %d+%d=%d',[sqr(la), sqr(lb), sqr(lc)]));
   end;
   op_alea.imelange3(la, lb, lc);
   result := format( 'AB=%dcm\ ;\ BC=%dcm\ ;\ AC=%dcm' ,[la, lb, lc]);
end;

function top_rel_pythagore.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Relation de Phytagore';
      info_ennonce     : result := 'Indiquer si le triangle ABC est rectangle';
      info_commentaire : begin result := 'Le corrigé est présent.' + #13#10 +
                               'Les triangles ne sont pas rectangle qu''une fois sur 3 en moyenne' + #13#10 +
                               'parce que lorsqu''il y a une erreur de calcul,' + #13#10 +
                               'la probalité est très importante que le résultat soit négatif' + #13#10 +
                               'et que d''autre part, un faux resultat positif' + #13#10 +
                               'résulte probablement d''un résultat donné au hasard.';
                         end;
   else
      result := '';
   end;
end;

{ top_arrondis }

constructor top_arrondis.create;
begin

end;

destructor top_arrondis.destroy;
begin

  inherited;
end;

function top_arrondis.genere_formule: string;
var
   i, j, d, f, p1, p2 : integer;
   st  : string;
   //nb : array[1.. 5] of string;
begin
   p1 := -3;
   p2 := 3;
   repeat
      i := op_alea.iplage(p1, p2);
   until routines.ijamais_utilise(i, p2 - p1 -2) ;
   case i of
       -3 : st := 'au millieme';
       -2 : st := 'au centieme';
       -1 : st := 'au dizieme';
       0  : st := 'a l''unite';
       1  : st := 'a la dizaine';
       2  : st := 'a la centaine';
       3  : st := 'au millier';
   end;
   result := '\begin{tabular}{l}\text{Arrondir ' + st + ' pres:}\\\vspace{5}\\\hspace{15}' ;
   for j := 1 to 5 do begin
      if i < 0 then d := -3 + i else d := -3 ;
      if i >= 0 then begin
         f :=  i - 1;
         if op_alea.UnSurX(2) then d := i - 2;
      end else begin
         if op_alea.UnSurX(2) then f := 0 else f := i -1;
      end;
      result := result + op_alea.snombre(8, d, f) ;
      if j < 5 then result := result + ';\hspace{15}' ;
   end;
   result := result + '\end{tabular}' ;
   max_car := 1200;
end;

function top_arrondis.get_info(type_info: ttype_info): ansistring;
begin

end;





{ top_puiss10_2_decimal }

constructor top_puiss10_2_decimal.create;
begin

end;

destructor top_puiss10_2_decimal.destroy;
begin

  inherited;
end;

function top_puiss10_2_decimal.genere_formule: string;
var
   n : integer;
begin
   n := op_alea.iplage(-7,7);
   result := '10^{3$'+ inttostr(n)+ '}=' ;
end;

function top_puiss10_2_decimal.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Puissance de 10 vers nombre décimal';
      info_ennonce     : result := 'Exprimer en nombre décimal, la puissance de 10 donnée';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_decimal2puiss10 }

constructor top_decimal2puiss10.create;
begin

end;

destructor top_decimal2puiss10.destroy;
begin

  inherited;
end;

function top_decimal2puiss10.genere_formule: string;
var
    b : string;
begin

   b := op_alea.spuiss10(-7, 7);

   result := format('%s=', [ b]);
end;

function top_decimal2puiss10.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Nombre décimal vers puissance de 10';
      info_ennonce     : result := 'Exprimer en puissance de 10, le nombre décimal donné';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_vers_n_scientfq }

constructor top_vers_n_scientfq.create;
begin

end;

destructor top_vers_n_scientfq.destroy;
begin

  inherited;
end;

function top_vers_n_scientfq.genere_formule: string;
var
   a : string;
begin
   a := op_alea.snombre(5, -7 ,7);
   result := a + '=';
end;

function top_vers_n_scientfq.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Nombre décimal vers notation scientifique';
      info_ennonce     : result := 'Exprimer en notation scientifique, le nombre décimal donné';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_de_n_scientfq }

constructor top_de_n_scientfq.create;
begin

end;

destructor top_de_n_scientfq.destroy;
begin

  inherited;
end;

function top_de_n_scientfq.genere_formule: string;

begin

   result := op_alea.snombre_scientifique(5, -4, 7) + '=';
end;

function top_de_n_scientfq.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Nombre en notation scientifique vers nombre décimal';
      info_ennonce     : result := 'Exprimer en nombre décimal, le nombre en notation scientifique donné';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_op_avec_puiss10 }

constructor top_op_avec_puiss10.create;
begin

end;

destructor top_op_avec_puiss10.destroy;
begin

  inherited;
end;

function top_op_avec_puiss10.genere_formule: string;
var
   op1, op2, n1, n2, n3 : string;
   p : integer;
   x : extended ;
begin
   if op_alea.binaire then begin
      p := op_alea.iplage(-5, 5);
      n1 := op_alea.snombre_scientifique( 2, p-1 , p+1, true);
      n2 := op_alea.snombre_scientifique( 2, p-1 , p+1, true);
      n3 := op_alea.snombre_scientifique( 2, p-1 , p+1, true);
      op1 := op_alea.signe;
      op2 := op_alea.signe;
   end else begin
      op1 := '\times';
      op2 := '\times';
      n1 := op_alea.snombre_scientifique( 2, -5 , 5, true);
      n2 := op_alea.snombre_scientifique( 2, -5 , 5, true);
      n3 := op_alea.snombre_scientifique( 2, -5 , 5, true);
   end;

   result := format('%s%s%s%s%s=',[n1,op1,n2,op2,n3]);
   max_car := 1600;

   x := strtofloat(pile.Strings[2]);
   if op1 = '+' then
      x := x + strtofloat(pile.Strings[1])
   else if op1 = '-' then
      x := x - strtofloat(pile.Strings[1])
   else
      x := x * strtofloat(pile.Strings[1]);
   if op2 = '+' then
      x := x + strtofloat(pile.Strings[0])
   else if op2 = '-' then
      x := x - strtofloat(pile.Strings[0])
   else
      x := x * strtofloat(pile.Strings[0]);
   //sl_corrige.Add(floattostr(x));
   sl_corrige.Add( routines.notation_scientifique(x));
end;

function top_op_avec_puiss10.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Opérations sur des nombres en notation scientifique';
      info_ennonce     : result := 'Exprimer en en notation scientifique, le resultat des opérations';
      info_commentaire : result := 'Présence du corrigé';
   else
      result := '';
   end;
end;

{ top_op_avec_puissances }

constructor top_op_avec_puissances.create;
begin

end;

destructor top_op_avec_puissances.destroy;
begin

  inherited;
end;

function top_op_avec_puissances.genere_formule: string;
var
   l : string;
   o, n, m : integer;
begin
   l := op_alea.caracteres('abcxyz');
   o := op_alea.iplage(1,3);
   n := op_alea.iplage(-9, 9);
   m := op_alea.iplage(-9, 9);
   case o of
      1 : result := format('%s^{3$%d}\times %s^{3$%d}=', [l, n, l, m]);
      2 : result := format('{5$\frac{%s^{3$%d}}{%s^{3$%d}}=}', [l, n, l, m]);
      3 : result := format('(%s^{3$%d})^{3$%d}=', [l, n, m]);
   end;
end;

function top_op_avec_puissances.get_info(
  type_info: ttype_info): ansistring;
begin

end;

{ top_frac_avec_puiss10 }




constructor top_frac_avec_puiss10.create;
begin

end;

destructor top_frac_avec_puiss10.destroy;
begin

  inherited;
end;

function top_frac_avec_puiss10.genere_formule: string;
var
   num, den : string ;
   f  : array[1.. 4] of integer;
   i : integer;
   x : extended;
function facteur( f ,g : integer; denominateur : boolean): string;
var
   n : integer;
   exp : string;
begin
   if denominateur then begin
      if op_alea.binaire then n := 1 else n := f;
      if op_alea.binaire then n := n * g;
   end else begin
       n := f * g
   end;
   if n mod 10 = 0 then n := n div 10;
   result := inttostr(n);
   if length(result) > 1 then insert(',', result, 2);
   exp := op_alea.splage(-5, 5);
   if n= 1 then begin
      pile.Insert(0, '1e' + exp );
      result := '10^{3$' + exp + '}' ;
   end else begin
      pile.Insert(0, result + 'e' + exp );
      result := result + '\times10^{3$' + exp + '}' ;
   end
end;
begin
   for i := 1 to 4 do  f[i] := op_alea.iplage(1,9) ;

   num := facteur(f[1], f[2], false) + '\times' + facteur(f[3], f[4], false);
   op_alea.melange_tableau(f);
   den := facteur(f[1], f[2], true) + '\times' + facteur(f[3], f[4], true);

   result := format('\frac{%s}{%s}=',[num, den]);

   x := strtofloat(pile.Strings[3])*strtofloat(pile.Strings[2])/(strtofloat(pile.Strings[1])*strtofloat(pile.Strings[0]));
   sl_corrige.Add(floattostr(x) + '......' +  routines.notation_scientifique(x));
   //sl_corrige.Add( routines.notation_scientifique(x));
end;

function top_frac_avec_puiss10.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Fractions avec des nombres en notation scientifique';
      info_ennonce     : result := 'Exprimer en en notation scientifique, le resultat des opérations';
      info_commentaire : result := 'Présence du corrigé';
   else
      result := '';
   end;
end;

{ top_eq1degre }

constructor top_eq1degre.create;
begin

end;

destructor top_eq1degre.destroy;
begin

  inherited;
end;

function top_eq1degre.genere_formule: string;
var
   x, a, b, c, d, i, j : integer; // ax + b = c  ; c ( ax +b) = d
   membre : array[1.. 2] of string;
   frac : boolean;
begin
   frac := diff_plus and op_alea.binaire ;
   x := op_alea.iplage(-10, 10);
   a := op_alea.iplage(-10, 10);
   while a = 0 do a := op_alea.iplage(-10, 10);
   b := op_alea.iplage(-10, 10);
   if frac then begin
      c := op_alea.iplage(-10, 10);
      while c = 0 do c := op_alea.iplage(-10, 10);
      d := c * ( a * x + b);
   end else begin
      c := a * x + b;
      d := 0;
   end;
   sl_corrige.Add(inttostr(x));
   if op_alea.binaire then i := 1 else i := 2;
   j := 3 -i;
   if a = 1 then
      membre[1] := 'x'
   else if a = -1 then
      membre[1] := '-x'
   else
      membre[1] := inttostr(a) + 'x';
   if b <> 0 then begin
      if op_alea.binaire then begin
         if b > 0 then
            membre[1] := membre[1]  + '+' + inttostr(b)
         else
            membre[1] := membre[1]  + inttostr(b)
      end else begin
         if a > 0 then
            membre[1] := inttostr(b) + '+' + membre[1]
         else
            membre[1] := inttostr(b) + membre[1] ;
      end;
   end;
   if frac then begin
      membre[1] := '\frac{' + inttostr(d) + '}{' + membre[1] + '}' ;
   end;
   membre[2] := inttostr(c);
   result := membre[i] + '=' + membre[j];

end;

function top_eq1degre.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := '';
      info_ennonce     : result := '';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_conv_unites }

constructor top_conv_unites.create;
begin

end;

destructor top_conv_unites.destroy;
begin

  inherited;
end;

function top_conv_unites.genere_formule: string;
var
   u, ori, prf1, prf2, nb : string;
function choix_prefixe( origine : string): string;
begin
   repeat
      result := op_alea.caracteres('khbzdcm');
      if result = 'b' then result := 'da';
      if result = 'z' then result := '';
   until result <> origine;
end;
begin
   if op_alea.binaire then u := 'm' else u := 'g';
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori);
   nb := op_alea.snombre(4, -7 , 3) ;
   if diff_plus then  prf2 := choix_prefixe(prf1) else prf2 := '';
   result := nb + '\hspace{1}' + prf1 + u + '=\hspace{200}' + prf2 + u ;
   max_car := 1000;
end;

function top_conv_unites.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Conversion d''unités';
      info_ennonce     : result := '';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_conv_unites_ns }

constructor top_conv_unites_ns.create;
begin

end;

destructor top_conv_unites_ns.destroy;
begin

  inherited;
end;

function top_conv_unites_ns.genere_formule: string;
var
   u, ori, prf1, prf2, nb : string;
function choix_prefixe( origine : string): string;
begin
   repeat
      result := op_alea.caracteres('khbzdcm');
      if result = 'b' then result := 'da';
      if result = 'z' then result := '';
   until result <> origine;
end;
begin
   if op_alea.binaire then u := 'm' else u := 'g';
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori);
   nb := op_alea.snombre_scientifique(4, -5 , 5) ;
   if diff_plus then  prf2 := choix_prefixe(prf1) else prf2 := '';
   result := nb + '\hspace{1}' + prf1 + u + '=\hspace{200}' + prf2 + u ;
   max_car := 1000;
end;

function top_conv_unites_ns.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Conversion d''unités en notation scientifique';
      info_ennonce     : result := '';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_conv_W_dec }

constructor top_conv_W_dec.create;
begin

end;

destructor top_conv_W_dec.destroy;
begin

  inherited;
end;

function top_conv_W_dec.genere_formule: string;
var
   ori, prf1, prf2, nb : string;
function choix_prefixe( origine : string): string;
begin
   repeat
      result := op_alea.caracteres('GMkzmun');
      if result = 'u' then result := '\mu ';
      if result = 'z' then result := '';
   until result <> origine;
end;
begin
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori);
   nb := op_alea.snombre(4, -7 , 3) ;
   if diff_plus then  prf2 := choix_prefixe(prf1) else prf2 := '';
   result := nb + '\hspace{1}' + prf1 + 'W' + '=\hspace{200}' + prf2 + 'W' ;
   max_car := 1000;
end;

function top_conv_W_dec.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Conversion de Watts en décimal';
      info_ennonce     : result := '';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_conv_W_ns }

constructor top_conv_W_ns.create;
begin

end;

destructor top_conv_W_ns.destroy;
begin

  inherited;
end;

function top_conv_W_ns.genere_formule: string;
var
   ori, prf1, prf2, nb : string;
function choix_prefixe( origine : string): string;
begin
   repeat
      result := op_alea.caracteres('GMkzmun');
      if result = 'u' then result := '\mu ';
      if result = 'z' then result := '';
   until result <> origine;
end;
begin
   if diff_plus then ori := 'x' else ori := '';
   prf1 := choix_prefixe(ori);
   nb := op_alea.snombre_scientifique(4, -5 , 5) ;
   if diff_plus then  prf2 := choix_prefixe(prf1) else prf2 := '';
   result := nb + '\hspace{1}' + prf1 + 'W' + '=\hspace{200}' + prf2 + 'W' ;
   max_car := 1000;
end;

function top_conv_W_ns.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre       : result := 'Conversion de Watts en notation scientifique';
      info_ennonce     : result := '';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_conv_aires }

constructor top_conv_aires.create;
begin
end;

destructor top_conv_aires.destroy;
begin

  inherited;
end;

function top_conv_aires.genere_formule: string;
begin
   result := conv_aires(false, diff_plus);
end;

function top_conv_aires.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Conversions d''aires';
      info_ennonce : result := '';
      info_commentaire : result := 'parfois les unités seront :' + #13#10 +
                                   '    des ares (a) = dam² ' + #13#10 +
                                   '    des hectares (ha) = hm²  ' + #13#10 +
                                   '    des centiares (ca) = m²';
   else
      result := '';
   end;
end;

{ top_conv_aires_ns }

constructor top_conv_aires_ns.create;
begin

end;

destructor top_conv_aires_ns.destroy;
begin

  inherited;
end;

function top_conv_aires_ns.genere_formule: string;
begin
   result := conv_aires(true, diff_plus);
end;

function top_conv_aires_ns.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Conversions d''aires en notation scientifique';
      info_ennonce : result := '';
      info_commentaire : result := 'parfois les unités seront :' + #13#10 +
                                   '    des ares (a) = dam² ' + #13#10 +
                                   '    des hectares (ha) = hm²  ' + #13#10 +
                                   '    des centiares (ca) = m²';
   else
      result := '';
   end;
end;

{ top_conv_volumes }

constructor top_conv_volumes.create;
begin

end;

destructor top_conv_volumes.destroy;
begin

  inherited;
end;

function top_conv_volumes.genere_formule: string;
begin
   result := conv_volumes(false, diff_plus);
end;

function top_conv_volumes.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Conversions de volumes';
      info_ennonce : result := '';
      info_commentaire : result := 'parfois les unités seront des litres(l)' + #13#10 +
                                   '                       ou des millilitres (ml)' + #13#10 +
                                   '                       ou des microlitres(µl)';
   else
      result := '';
   end;
end;

{ top_conv_volumes_ns }

constructor top_conv_volumes_ns.create;
begin

end;

destructor top_conv_volumes_ns.destroy;
begin

  inherited;
end;

function top_conv_volumes_ns.genere_formule: string;
begin
   result := conv_volumes(true, diff_plus);
end;

function top_conv_volumes_ns.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Conversions de volumes en notation scientifique';
      info_ennonce : result := '';
      info_commentaire : result := 'parfois les unités seront des litres(l)' + #13#10 +
                                   '                       ou des millilitres (ml)' + #13#10 +
                                   '                       ou des microlitres(µl)';
   else
      result := '';
   end;
end;



{ top_ident_remarquables }

constructor top_ident_remarquables.create;
begin

end;

destructor top_ident_remarquables.destroy;
begin

  inherited;
end;

function top_ident_remarquables.genere_formule: string;
var
   a, b, c, s : integer;
   sta, sts : string;
begin
   a := op_alea.iplage(1, 9) ;
   b := op_alea.iplage(1, 9) ;
   sta := inttostr(sqr(a));
   if (a = 1) then
      sta := '';
   if op_alea.UnSurX(3) then begin
      if op_alea.binaire then begin
         result := sta + 'x^2' + '-' + inttostr(sqr(b)) + '=';
      end else begin
         result := '-' + sta + 'x^2' + '+' + inttostr(sqr(b)) + '=';
      end;
   end else begin
      c := 2* a*b;
      if op_alea.binaire then sts := '+' else sts := '-';
      result := sta + 'x^2' + sts + inttostr(c) + 'x+' + inttostr(sqr(b)) + '=';
   end;
end;

function top_ident_remarquables.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Utilisations des identitées remarquables';
      info_ennonce : result := 'Factoriser';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

{ top_produit_a_zero }

constructor top_produit_a_zero.create;
begin

end;

destructor top_produit_a_zero.destroy;
begin

  inherited;
end;

function top_produit_a_zero.genere_formule: string;
var
   n, i : integer;
   corrige, sa : string;
function facteur : string;
var
   r , a : integer;
   plus : string;
begin
   r:= op_alea.iplage_sans_zero(-10, 10);
   a:= op_alea.iplage_sans_zero(-10, 10);
   if a * r <= 0 then plus := '+ ' else plus := '';
   if a = 1 then sa := '' else if a = -1 then sa := '-' else sa := inttostr(a);
   result := format('(%sx%s%d)',[sa, plus , - a * r ]);
   if corrige <> '' then corrige := corrige + ';';
   corrige := corrige + inttostr(r);
end;
begin
   result := '';
   n := op_alea.iplage(2, 4);
   corrige := '';
   for i := 1 to n do begin
      result := result + facteur;
   end;
   result := result + '=0';
   if op_alea.UnSurX(10) then begin
      result := 'x' + result;
      corrige := '0;'+ corrige;
   end;
   sl_corrige.Add(corrige);
end;

function top_produit_a_zero.get_info(type_info: ttype_info): ansistring;
begin
   case type_info of
      info_titre   : result := 'Produit de facteus égal à 0';
      info_ennonce : result := 'Trouver les solutions';
      info_commentaire : result := '';
   else
      result := '';
   end;
end;

end.

unit base;

interface


uses
   SysUtils, ExtCtrls, types, StdCtrls, Classes, Math, Dialogs,
   Windows;

type

  i_calculs = interface
     function genere_formule : string;

  end;


  ttab_car = array[1.. 10] of string;

  toptions_aleatoires = class
    function binaire : boolean;
    function expressions(exp: ttab_car; vide : boolean = false): string;
    function caracteres(caract : string; vide : boolean = false) : string;
    function signe : string;
    function spl0_9 : string;
    function spl1_9 : string;
    function splage(debut_incl, fin_incl: integer): string;
    function iplage(debut_incl, fin_incl: integer): integer;
    function slogpl(debut_incl, fin_incl: integer): string;
    function ilogpl(debut_incl, fin_incl: integer): integer;
    function ipuiss10(debut_incl, fin_incl: integer): single;
    function spuiss10(debut_incl, fin_incl: integer): string;
    function snombre(nbsignificatifsmax, deb_p10, fin_p10 : integer): string ;
    function x_div : string;
    function operation_3 : string;
    constructor create;
    destructor destroy;  override;
  private

  end;

  troutines = class
    function pgcd(a, b : integer): integer;
    function s_pgcd(a, b : string): integer;
    function mult(a, b : string) : string;
    constructor create;
    destructor destroy;  override;
  private

  end;

  tlatex = class
    imgLatex, imgPage : timage;
    function dim_impression( himg, limg, h_ttl, l_ttl : integer) : trect;
    procedure une_colonne( calculs : i_calculs ; nb_lignes : integer; espace : integer =0);
    procedure tableau( calculs : i_calculs ; nb_lignes, nb_colonnes : integer; espacev  : integer =0 ; espaceh : integer = 0);
    procedure latex2img(latex: string);
    constructor create( img_latex, img_page : timage);
    destructor destroy;  override;
  end;

var
  diff_plus : boolean ;
  hpix : integer;
  hmarge : integer = 30; // pour mille de la hauteur
  lmarge : integer = 30; // pour mille de la largeur
  longueur_laTex : tlabel;
  text_latex : tstrings;
  routines : troutines;
  sl_corrige : tstringlist;
  index_corrige : integer;
  sNomGif : string;
  op_alea : toptions_aleatoires;

implementation

function CreateGifFromEq(Expr, FileName: PAnsiChar): Integer; cdecl; external 'MimeTex.dll';
//GetGIFFile: function (AFileName: PChar): HBITMAP; stdcall;
function GetGIFFile(AFileName: PChar): HBITMAP; stdcall;  external 'GIFVIEW.DLL';


{ toptions_aleatoires }

function toptions_aleatoires.expressions(exp: ttab_car; vide : boolean = false): string;
var
   i, n : integer;
begin
   n := 11;
   for i := 1 to high(exp) do begin
      if (exp[i] = '') and (n = 11) then  n := i
   end;
   if vide then inc(n);
   i := randomrange(1, n);
   if vide and (i = n - 1) then
      result := ''
   else
      result := exp[i];
end;

function toptions_aleatoires.caracteres(caract : string; vide : boolean = false): string;
var
   i, n : integer;
begin
   n := length(caract);
   if vide then inc(n);
   i := randomrange(1, n + 1);
   if vide and (i = n) then
      result := ''
   else
      result := caract[i];
end;

constructor toptions_aleatoires.create;
begin
   inherited create;
   randomize;
end;

destructor toptions_aleatoires.destroy;
begin

  inherited;
end;

function toptions_aleatoires.operation_3: string;
var
   i : integer;
begin
   i := randomrange(1, 4);
   case i of
      1 : result := '+';
      2 : result := '-';
      3 : result := '\times';
   end;
end;


function toptions_aleatoires.x_div: string;
var
   i : integer;
begin
   i := randomrange(1, 3);
   case i of
      1 : result := '\times';
      2 : result := '\div';
   end;
end;

function toptions_aleatoires.splage(debut_incl, fin_incl: integer): string;
var
   i : integer;
begin
   i := randomrange(debut_incl, fin_incl +1);
   result := inttostr(i);
end;

function toptions_aleatoires.iplage(debut_incl, fin_incl: integer): integer;
begin
   result := randomrange(debut_incl, fin_incl +1);
end;

function toptions_aleatoires.signe: string;
var
   i : integer;
begin
   i := randomrange(1, 3);
   case i of
      1 : result := '+';
      2 : result := '-';
   end;
end;

function toptions_aleatoires.spl0_9: string;
var
   i : integer;
begin
   i := randomrange(0, 10);
   result := inttostr(i);
end;

function toptions_aleatoires.spl1_9: string;
var
   i : integer;
begin
   i := randomrange(1, 10);
   result := inttostr(i);
end;

function toptions_aleatoires.binaire: boolean;
var
   i : integer;
begin
   i := randomrange(1, 3);
   result := i = 1;
end;

function toptions_aleatoires.ilogpl(debut_incl, fin_incl: integer): integer;
var
   d, f, x : single;
begin
   d := log10(debut_incl);
   f := log10(fin_incl );
   x := random;
   x := d + x *(f-d);
   result := round( power( 10, x));
end;

function toptions_aleatoires.slogpl(debut_incl, fin_incl: integer): string;
begin
   result := inttostr(ilogpl(debut_incl, fin_incl));
end;

function toptions_aleatoires.ipuiss10(debut_incl, fin_incl: integer): single;
begin
   result := strtofloat(spuiss10(debut_incl,fin_incl));
   {if fin_incl >= 0 then begin
      if debut_incl >= 0 then begin
         p := iplage(debut_incl,fin_incl);
         result := round(intpower(10,p));
      end else begin
         p := iplage(0 ,fin_incl - debut_incl);
         q := iplage(0 ,- debut_incl);
         result := round(intpower(10,p))/ round(intpower(10,q));
      end;
   end else begin
      p := iplage(-fin_incl, - debut_incl);
      result := 1/ round(intpower(10,p));
   end;   }
end;

function toptions_aleatoires.spuiss10(debut_incl,fin_incl: integer): string;
var
   p, i : integer;
begin
   p := iplage(debut_incl,fin_incl);
   if p >= 0 then begin
      result := '1';
      for i := 1 to p do begin
         result := result + '0';
      end;
   end else begin
      result := '1';
      for i := 2 to -p do begin
         result := '0' + result  ;
      end;
      result := '0,' + result  ;
   end;

end;

function toptions_aleatoires.snombre(nbsignificatifsmax, deb_p10, fin_p10 : integer): string;
var
   st : string;
   i, p: integer;
begin
   if nbsignificatifsmax > 0 then begin
      st:= '';
      for i:= 1 to nbsignificatifsmax do begin
         st := st + '9';
      end;
      st := slogpl(1, strtoint(st));
      p := iplage(deb_p10, fin_p10);
      if p >= 0 then begin
         for i := 1 to p do begin
            st := st + '0';
         end;
      end else begin
         if -p > length(st) - 1 then begin
            for i := 2 to -p do begin
               st := '0' + st  ;
            end;
            st := '0,' + st;
         end else begin
            insert(',' , st, length(st) + p +1 );
         end;
      end;
   end;
   result := st;
end;

{ troutines }

constructor troutines.create;
begin

end;

destructor troutines.destroy;
begin

  inherited;
end;

function troutines.mult(a, b: string): string;
var
   c, d : string ;
   i, j, x, y : integer;
   z : int64;
begin
   c := a ;
   d := b;
   i := pos(',', c);
   j := pos(',', d);
   delete( c, i, 1);
   delete( d, j, 1);
   x := strtoint(c);
   y := strtoint(d);
   z := x * y;
   result := inttostr(z);
   if i > 0 then i := length(c) -i + 1 ;
   if j > 0 then j := length(d) -j + 1 ;
   i := i + j;
   if i > 0 then begin
      while length(result) <= i do result := '0' + result;
      insert(',', result, length(result)  - i + 1);
   end;
end;

function troutines.pgcd(a, b: integer): integer;
var   //algorithme d'Euclide
   r, x, y: integer;
begin
   x := a ;
   y := b ;
   r := x mod y;
   while r > 1  do begin
      x := y;
      y := r;
      r := x mod y;
   end;
   if r = 0 then
      result := y
   else
      result := 1;
end;

function troutines.s_pgcd(a, b: string): integer;
var
   x, y : integer;
begin
   x := strtointdef(a, 1);
   y := strtointdef(b, 1);
   result := pgcd(x, y);
end;

{ tlatex }

constructor tlatex.create(img_latex, img_page : timage);
begin
   inherited create;
   imglatex :=img_latex;
   imgpage := img_page;
end;

destructor tlatex.destroy;
begin

  inherited;
end;

procedure tlatex.latex2img(latex: string);
var
   drect, srect : TRect;
begin
   longueur_laTex.Caption := inttostr(length(latex));
   text_latex.Text := latex;
   try
      CreateGifFromEq( PAnsiChar(latex), PAnsiChar(sNomGif));
   except
      showmessage('Erreur lors de l''utilsation de MimeTex.dll');
   end;
   try
      imglatex.Picture.Bitmap.Handle := GetGIFFile(PChar(sNomGif));
   except
      showmessage('Erreur lors de l''utilsation de GIFVIEW.DLL');
   end;
   //imgpage.Picture.Assign(imglatex.picture.Bitmap);
   //imgPage.Picture.Bitmap.Canvas.CopyMode := cmDstInvert	;		;
   //imgPage.Picture.Bitmap.Canvas.StretchDraw(dim_impression(imglatex.Height, imglatex.Width, imgpage.Height, imgpage.Width) , Imglatex.Picture.Bitmap);


   srect := rect(0, 0, imglatex.Width, imglatex.Height);
   drect := dim_impression(imglatex.Height, imglatex.Width, imgpage.Height, imgpage.Width);
   imgPage.canvas.CopyRect(drect, imglatex.canvas, srect);
end;

procedure tlatex.une_colonne( calculs : i_calculs ; nb_lignes : integer; espace : integer =0);
var
   st, saut : string;
   i : integer;
begin
   if espace = 0 then
      saut := '\\'
   else
      saut := '\\\vspace{' + inttostr(espace) + '}\\';
   for i := 1 to nb_lignes do begin
      if st <> '' then   st := st + saut else st := '5$';
      st := st + calculs.genere_formule;
   end;
   if length(st) > 2 then latex2img(st);
end;

procedure tlatex.tableau(calculs: i_calculs; nb_lignes, nb_colonnes,  espacev, espaceh: integer);
var
   st : string;
   l, c : integer;
begin  //\begin{tabular}{l|l|l}  l1c1 &  l1c2  &  l1c3 \\  l2c1 & l2c2 &  l2c3 \\  l3c1 & l3c2 &  l3c3 \\\end{tabular}
(* on peut mettre des tableaux dans les tableaux:
\begin{tabular}{l|l|l}  l1c1 &  l1c2  &  l1c3 \\  \begin{tabular}{l|l|l}  l1c1 &  l1c2  &  l1c3 \\  l2c1 & l2c2 &  l2c3 \\  l3c1 & l3c2 &  l3c3 \\\end{tabular} & \begin{tabular}{l|l|l}  l1c1 &  l1c2  &  l1c3 \\  l2c1 & l2c2 &  l2c3 \\  l3c1 & l3c2 &  l3c3 \\\end{tabular} &  \begin{tabular}{l|l|l}  l1c1 &  l1c2  &  l1c3 \\  l2c1 & l2c2 &  l2c3 \\  l3c1 & l3c2 &  l3c3 \\\end{tabular} \\  l3c1 & l3c2 &  l3c3 \\\end{tabular}
*)
   st := '5$\begin{tabular}{l';
   for c := 2 to nb_colonnes  do begin
      st := st + 'l';
   end;
   st := st + '}';
   for l := 1 to nb_lignes do begin
      for c := 1 to nb_colonnes  do begin
         st := st + calculs.genere_formule + '\hspace{' + inttostr(espaceh) + '}';
         if c <> nb_colonnes then st := st + '&';
      end;
      st := st + '\\\vspace{' + inttostr(espacev) + '}\\';
   end;
   st := st + '\end{tabular}';
   latex2img(st);
end ;


function Tlatex.dim_impression(himg, limg, h_ttl, l_ttl: integer): trect;
var
   lm , hm, httl, lttl : integer;
   rttl, rimg : single;
begin

   hm := h_ttl * hmarge div 1000;
   lm := l_ttl * lmarge div 1000;
   httl := h_ttl - 2 * hm;
   lttl := l_ttl - 2 * lm;
   result.top := hm;
   result.left := lm;
   // dimImpr pour brother 7030 :  6814 x  4676
   //Ppage.Height := Ppage.Width * printer.PageHeight div printer.PageWidth;
   rimg := limg/himg;
   rttl := lttl/httl;
   if rimg > rttl then begin
      if limg > hpix*rttl then begin
         result.right := lttl;
      end else begin
         result.right := trunc(lttl * limg /( hpix*rttl));
      end;
      result.Bottom := trunc( result.right /rimg );
   end else begin
      if himg > hpix then begin
         result.Bottom :=  httl;
      end else begin
         result.Bottom := trunc( httl * himg /hpix);
      end;
      result.Right := trunc(result.Bottom * rimg);
   end;
   result.Right := result.Right + lm;
   result.Bottom := result.Bottom + hm;
end;




end.
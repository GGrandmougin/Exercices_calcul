unit exercices_calculs1;
{
documentation latex générale:
http://www.forkosh.com/latex/ltx-2.html
documentation reduite pour les expressions mathématiques:
http://www.forkosh.com/mathtextutorial.html
utile:
detexify.kirelabs.org/classify.html
}
{
 Utilisation de MimeTex.dll de John Forkosh (licence GPL)
 Dll distribuée avec le logiciel DLaTex2Gif
 Utilisation de GIFVIEW.DLL de William Schroeder
}
{
clases suivantes indépendantes de l'interface visuelle)

classe pour generation d'options aléatoires (nombres, signes, operations, expsants etc...)
création -> randomize

1 classe différente pour chaque type de calcul inplémentant une interface retournant le string latex correspondant

classe pour traitement latext ( mise en page, appels aux dlls)
création -> affecte une (ou plusieurs) variable locale timage

}

(*LATEX
-------------------------------------------
espaces en latex:
5$........\ ..........
.........\hspace{100}...........
.\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\ .\
-------------------------------------------
*)

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Printers, math, Clipbrd, ComCtrls;

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
    function mult(a, b : string) : string;
    constructor create;
    destructor destroy;  override;
  private

  end;

  top_fractions = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_simplication = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_developpent = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_x_puiss10 = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_test = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_factorisation = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_Additionencol = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_nb_relatifs = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_corrige = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
  end;

  top_multiplications = class(tinterfacedobject, i_calculs)
    function genere_formule : string;
    constructor create;
    destructor destroy;  override;
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

  TForm1 = class(TForm)
    Ppage: TPanel;
    BFractions: TButton;
    Cbsource_LaTex: TCheckBox;
    Bcfg_impr: TButton;
    Bimpression: TButton;
    Messais: TMemo;
    Bessais: TButton;
    PrinterSetupDialog1: TPrinterSetupDialog;
    Ipage: TImage;
    SBaffichage: TScrollBox;
    Ilatex: TImage;
    Enombre: TEdit;
    Eespace: TEdit;
    Llignes: TLabel;
    LEspace: TLabel;
    Bdeveloppement: TButton;
    BFactorisations: TButton;
    BNombresrelatifs: TButton;
    BSimplification: TButton;
    Bx_puiss10: TButton;
    Bmultiplications: TButton;
    BAdditionencolonne: TButton;
    Button8: TButton;
    BPressepapier: TButton;
    CbEssais: TCheckBox;
    CbDifficulteplus: TCheckBox;
    LDimImpr: TLabel;
    Ldimensions1: TLabel;
    Ldimensions2: TLabel;
    Ehpixels: TEdit;
    Lhpixels: TLabel;
    Image1: TImage;
    Lnbcaracteres: TLabel;
    Lnb_car: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button9: TButton;
    Mlatex: TMemo;
    Btest: TButton;
    Pcommandes: TPanel;
    Pimpression: TPanel;
    Paffichage: TPanel;
    Ecol: TEdit;
    Eespaceh: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BCorrige: TButton;
    Lcorrige: TLabel;
    LApercu: TLabel;
    procedure genere(icalc : i_calculs; corrige : boolean = false);
    procedure clear_corrige;
    procedure ipage_change(Sender: TObject);
    procedure Bcfg_imprClick(Sender: TObject);
    procedure BimpressionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BessaisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function getversion: String;
    procedure BFractionsClick(Sender: TObject);
    procedure PpageResize(Sender: TObject);
    procedure BdeveloppementClick(Sender: TObject);
    procedure BPressepapierClick(Sender: TObject);
    procedure BFactorisationsClick(Sender: TObject);
    procedure CbDifficulteplusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbEssaisClick(Sender: TObject);
    procedure EhpixelsChange(Sender: TObject);
    procedure BNombresrelatifsClick(Sender: TObject);
    procedure Cbsource_LaTexClick(Sender: TObject);
    procedure BSimplificationClick(Sender: TObject);
    procedure BtestClick(Sender: TObject); 
    procedure Bx_puiss10Click(Sender: TObject);
    procedure BmultiplicationsClick(Sender: TObject);
    procedure BAdditionencolonneClick(Sender: TObject);
    procedure BCorrigeClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }

    //op_alea : toptions_aleatoires;
    //op_frac : top_fractions;
    olatex : tlatex;
    couleur_affichage : tcolor;
  end;

var
  Form1: TForm1;
  sNomGif : string;
  op_alea : toptions_aleatoires;
  diff_plus : boolean ;
  hpix : integer;
  hmarge : integer = 30; // pour mille de la hauteur
  lmarge : integer = 30; // pour mille de la largeur
  longueur_laTex : tlabel;
  text_latex : tstrings;
  routines : troutines;
  sl_corrige : tstringlist;
  index_corrige : integer;
implementation

{$R *.dfm}
function CreateGifFromEq(Expr, FileName: PAnsiChar): Integer; cdecl; external 'MimeTex.dll';
//GetGIFFile: function (AFileName: PChar): HBITMAP; stdcall;
function GetGIFFile(AFileName: PChar): HBITMAP; stdcall;  external 'GIFVIEW.DLL';

procedure TForm1.Bcfg_imprClick(Sender: TObject);
begin
   printersetupdialog1.Execute;
   //Ppage.Height := Ppage.Width * printer.PageHeight div printer.PageWidth;
   ldimimpr.caption := inttostr(printer.PageWidth) + ' x ' + inttostr(printer.PageHeight);

end;

procedure TForm1.BimpressionClick(Sender: TObject);
begin
   try
   with Printer do begin
      BeginDoc;  // dimImpr pour brother 7030 :  6814 x  4676
      //Ppage.Height := Ppage.Width * PageHeight div PageWidth;
      ldimimpr.caption := inttostr(printer.PageWidth) + ' x ' + inttostr(printer.PageHeight);

      //PageHeight
      //PageWidth
      //canvas.Draw();
      //Canvas.StretchDraw(rect(rectimpr[i][2],rectimpr[i][1],rectimpr[i][2] + rectimpr[i][0],rectimpr[i][1] + rectimpr[i][0]), imrsm[i].Picture.Bitmap);
      //canvas.StretchDraw(rect());
      canvas.StretchDraw(olatex.dim_impression(Ilatex.Height, Ilatex.Width, PageHeight, PageWidth) , Ilatex.Picture.Bitmap);
      EndDoc;
   end;
   except
      MessageDlg('Problème d''impression', mtInformation, [mbOK],0);
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   sNomGif := ExtractFilePath(Application.ExeName)+'tempo.gif';
   op_alea := toptions_aleatoires.create;
   //op_frac := top_fractions.create;   créés lors de l'instanciation de l'interface
   olatex := tlatex.create(ilatex, ipage);
   caption := 'Exercices calculs    version ' + getversion + '    Gérard Grandmougin';
   //Ipage.Picture.OnChange := ipage_change;
   sl_corrige := tstringlist.Create;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  op_alea.Free;
  //op_frac.Free; //detruit lors du déréférencement de l'interface
  olatex.Free;
  routines.free;
  sl_corrige.Free;
end;


procedure TForm1.clear_corrige;
begin
   sl_corrige.Clear;
   Paffichage.Color := couleur_affichage;
   lcorrige.Visible := false;
end;


function TForm1.getversion: String;
Var
  fic : string;
  taille    : DWord;
  buffer    : PChar;
  datas : PChar;
  len  : DWord;
Begin
  result:='';
  buffer := nil;
  fic := Application.ExeName;
  taille := GetFileVersionInfoSize(PChar(fic), taille);
  If Taille > 0 then begin
     try
       buffer := AllocMem(taille);
       GetFileVersionInfo(PChar(fic), 0, taille, buffer);
       If VerQueryValue(buffer, PChar('\StringFileInfo\040C04E4\FileVersion'), Pointer(datas), len) then
          result:=datas;
     finally
       if buffer <> nil then
          FreeMem(buffer, taille);
     end;
   end;
end;

procedure TForm1.BessaisClick(Sender: TObject);
var
   i : integer;
   st : string;
begin
   st := '';
   for i := 0 to Messais.Lines.count -1 do begin
      if i > 0 then st := st + '\\';
      st := st + Messais.Lines[i];
   end;
   if Messais.Lines.count > 0 then begin
      olatex.latex2img(st);
   end;
end;

procedure TForm1.BCorrigeClick(Sender: TObject);
begin
   index_corrige := 0;
   genere(top_corrige.create, true);
   BCorrige.Visible := false;
   Lcorrige.Visible := true;
   Paffichage.Color := clFuchsia;
end;

procedure TForm1.BFractionsClick(Sender: TObject);
begin
   genere(top_fractions.create);
end;

procedure TForm1.BdeveloppementClick(Sender: TObject);
begin
   genere(top_developpent.create);
end;

procedure TForm1.Bx_puiss10Click(Sender: TObject);
begin
   genere(top_x_puiss10.create);
end;

procedure TForm1.BNombresrelatifsClick(Sender: TObject);
begin
   genere(top_nb_relatifs.create);
end;

procedure TForm1.BmultiplicationsClick(Sender: TObject);
begin
   genere(top_multiplications.create);
end;

procedure TForm1.BPressepapierClick(Sender: TObject);
begin
   if Cbsource_LaTex.Checked then
      Clipboard.SetTextBuf( PChar(Mlatex.Lines.Text))
   else
      Clipboard.Assign(ilatex.picture);
end;

procedure TForm1.BFactorisationsClick(Sender: TObject);
begin
   genere(top_factorisation.create);
end;

procedure TForm1.BAdditionencolonneClick(Sender: TObject);
begin
   genere(top_Additionencol.create);
end;


procedure TForm1.BtestClick(Sender: TObject);
begin
   genere(top_test.create);
end;


procedure TForm1.BSimplificationClick(Sender: TObject);
begin
   genere(top_simplication.create);
end;

procedure TForm1.genere(icalc : i_calculs; corrige : boolean = false);
var
   l, c, eh, ev  : integer;
begin
   //ipage.Picture.LoadFromFile('iblanche.bmp');
   ipage.Picture.Bitmap.Assign(image1.Picture.Bitmap);
   l := strtointdef( Enombre.Text , 0);
   ev := strtointdef( Eespace.Text , 0);
   c := strtointdef( Ecol.Text , 0);
   eh := strtointdef( Eespaceh.Text , 0);
   if (l > 0) and (c > 0) then begin
      if not corrige then clear_corrige;
      if c = 1 then begin
          olatex.une_colonne(icalc, l, ev);
      end else begin
          olatex.tableau(icalc, l, c, ev, eh);
      end;
   end else begin
      showmessage('Valeur incorrecte dans "Lignes" ou "Colonnes"');
   end;;
   Ldimensions2.Caption := inttostr(Ilatex.width) + ' x ' + inttostr(Ilatex.Height);
   BCorrige.Visible := sl_corrige.Count > 0;
end;

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


procedure TForm1.ipage_change(Sender: TObject);
begin
   //
end;

procedure TForm1.PpageResize(Sender: TObject);
begin
   //ipage.Height := ppage.ClientHeight - 2 * ipage.top;
   //ipage.Width := ppage.ClientWidth - 2 * ipage.left;

end;

procedure TForm1.CbDifficulteplusClick(Sender: TObject);
begin
   diff_plus := CbDifficulteplus.checked;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   diff_plus := CbDifficulteplus.checked;
   Messais.Visible := CbEssais.Checked;
   Bessais.Visible := CbEssais.Checked;
   Btest.Visible := CbEssais.Checked;
   PageControl1.Visible:= not CbEssais.Checked;
   mlatex.Visible := Cbsource_LaTex.Checked;
   SBaffichage.Visible:= not Cbsource_LaTex.Checked;   
   EhpixelsChange(self);
   longueur_laTex := Lnb_car;
   ipage.Picture.Bitmap.Assign(image1.Picture.Bitmap);
   text_latex := mlatex.Lines;
   routines := troutines.create;
   couleur_affichage := Paffichage.Color;
end;

procedure TForm1.CbEssaisClick(Sender: TObject);
begin
   Messais.Visible := CbEssais.Checked;
   Bessais.Visible := CbEssais.Checked;
   Btest.Visible := CbEssais.Checked;
   PageControl1.Visible:= not CbEssais.Checked;
end;

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

procedure TForm1.EhpixelsChange(Sender: TObject);
begin
   hpix := strtointdef(Ehpixels.Text, 0);
   if hpix <= 0 then begin          showmessage('valeur de "h pixels" non valide');
       hpix := 750;
   end;
end;

procedure TForm1.Cbsource_LaTexClick(Sender: TObject);
begin
   mlatex.Visible := Cbsource_LaTex.Checked;
   SBaffichage.Visible:= not Cbsource_LaTex.Checked;
end;


{ top_corrige }

constructor top_corrige.create;
begin

end;

destructor top_corrige.destroy;
begin

  inherited;
end;

function top_corrige.genere_formule: string;
begin
   if index_corrige < sl_corrige.Count then begin
      result := sl_corrige[index_corrige];
   end else begin
      result := '-';
   end;     
   index_corrige := index_corrige + 1;
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
   num, den, op : string;
begin
   den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while num = den do begin
      num := op_alea.spl1_9;
   end;
   //result := '\frac{' + num + '}{' + den + '}' ;
   result := format('\frac{%s}{%s}', [num, den]);
   op := op_alea.operation_3;
   if (op = '\times') or diff_plus then den := op_alea.splage(2,9);
   num := op_alea.spl1_9;
   while num = den do begin
      num := op_alea.spl1_9;
   end;
   //result := result + op + '\frac{' + num + '}{' + den + '}=' ;
   result := format('%s%s\frac{%s}{%s}=', [result, op, num, den]);
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

{ top_test }

constructor top_test.create;
begin
   inherited create;
end;

destructor top_test.destroy;
begin

  inherited;
end;

function top_test.genere_formule: string;
var
   //x : single;
   a, b, c : integer;
   st : string;
begin
   {if form1.messais.Lines.Count > 1 then begin
      a := strtointdef(form1.messais.Lines[0] , 987654321);
      b := strtointdef(form1.messais.Lines[1] , 987654321);
      if ( a <> 987654321) and ( b <> 987654321 ) then begin
         x := op_alea.ipuiss10(a, b);
         st := op_alea.spuiss10(a, b);
         result := format('%s-%g',[st, x]); //format('%g',[x]);
      end;
   end; }
  if form1.messais.Lines.Count > 0 then begin
      a := strtointdef(form1.messais.Lines[0] , 987654321);
      b := strtointdef(form1.messais.Lines[1] , 987654321);
      c := strtointdef(form1.messais.Lines[2] , 987654321);
      if ( a <> 987654321) and ( b <> 987654321 ) and ( c <> 987654321 ) then begin
         st := op_alea.snombre(a, b, c);
      end else begin
         st := '\begin{tabular}{l}G\''en\''erateur\ al\''eatoire\ de\ nombres\\mettre\ ligne\ 1:\ puissance\ de\ 10\ max\\mettre\ ligne\ 2:\ puissance\ de\ 10\ min\\mettre\ ligne\ 3:\ nombre\ chiffres\ significatifs\\\end{tabular}'
      end;
      result := st;
   end else begin
      result := 'Mettre\ du\ code\ LaTex\ dans\ le\ memo';
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


{ top_ultiplications }

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



end.

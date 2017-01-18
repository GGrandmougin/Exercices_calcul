unit exercices_calculs1;
// voir explications pour l'ajout de nouveau types de caculs dans les comentaires
// au début du module selection.pas

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
  Dialogs, StdCtrls, ExtCtrls, Printers, math, Clipbrd, ComCtrls, ImgList,
  base, calculs, selection;

type


  top_test = class(tinterfacedobject, i_calculs)
    function genere_formule : string; 
    function get_info(type_info : ttype_info): string;
    constructor create;
    destructor destroy;  override;
  end;


  TForm1 = class(TForm)
    Ppage: TPanel;
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
    Mlatex: TMemo;
    Btest: TButton;
    Pcommandes: TPanel;
    PImpression: TPanel;
    Paffichage: TPanel;
    Ecol: TEdit;
    Eespaceh: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    BCorrige: TButton;
    Lcorrige: TLabel;
    LApercu: TLabel;
    Pnb_impr: TPanel;
    ImageList: TImageList;
    TreeView1: TTreeView;
    Minfos: TMemo;
    procedure genere(icalc : i_calculs; corrige : boolean = false);
    procedure clear_corrige;
    procedure reset_impression;
    procedure init_impression;
    procedure inc_impression;
    procedure ipage_change(Sender: TObject);
    procedure Bcfg_imprClick(Sender: TObject);
    procedure BimpressionClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BessaisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function getversion: String;
    procedure BFractionsClick(Sender: TObject);
    procedure PpageResize(Sender: TObject);
    procedure BPressepapierClick(Sender: TObject);
    procedure Cbsource_LaTexClick(Sender: TObject);
    procedure CbDifficulteplusClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CbEssaisClick(Sender: TObject);
    procedure EhpixelsChange(Sender: TObject);
    procedure BtestClick(Sender: TObject);
    procedure suppr_image(treenode: TTreeNode);
    procedure BdeveloppementClick(Sender: TObject);
    procedure BNombresrelatifsClick(Sender: TObject);
    procedure BSimplificationClick(Sender: TObject);
    procedure BFactorisationsClick(Sender: TObject);
    procedure Bx_puiss10Click(Sender: TObject);
    procedure BmultiplicationsClick(Sender: TObject);
    procedure BAdditionencolonneClick(Sender: TObject);
    procedure BCorrigeClick(Sender: TObject);
    procedure BSimplification_expressionsClick(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TreeView1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure affiche_infos(idx : integer);
    procedure cache_infos;
    procedure minfos_visible( visi : boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }

    //op_alea : toptions_aleatoires;
    //op_frac : top_fractions;
    olatex : tlatex;
    couleur_affichage : tcolor;
    nb_impression : integer;
    mlatex_visi :boolean;
    sbaffichage_visi : boolean;
  end;

const
pp_image = 'Envoi l''image dans le presse_papiers';
pp_code = 'Envoi le texte du code LaTex dans le presse_papiers' ;

var
  Form1: TForm1;
  //diff_plus : boolean ;
  //hpix : integer;
  //hmarge : integer = 30; // pour mille de la hauteur
  //lmarge : integer = 30; // pour mille de la largeur
  //longueur_laTex : tlabel;
  //text_latex : tstrings;
  //routines : troutines;
  //sl_corrige : tstringlist;
  //index_corrige : integer;
  //sNomGif : string;
  //op_alea : toptions_aleatoires;
implementation

{$R *.dfm}
//function CreateGifFromEq(Expr, FileName: PAnsiChar): Integer; cdecl; external 'MimeTex.dll';
//GetGIFFile: function (AFileName: PChar): HBITMAP; stdcall;
//function GetGIFFile(AFileName: PChar): HBITMAP; stdcall;  external 'GIFVIEW.DLL';


procedure TForm1.Bcfg_imprClick(Sender: TObject);
begin
   printersetupdialog1.Execute;
   //Ppage.Height := Ppage.Width * printer.PageHeight div printer.PageWidth;
   ldimimpr.caption := inttostr(printer.PageWidth) + ' x ' + inttostr(printer.PageHeight);

end;

procedure TForm1.BimpressionClick(Sender: TObject);
begin
   if Pnb_impr.Color = clbtnface then begin
      try
      init_impression;
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
      inc_impression;
      except
         begin
            MessageDlg('Problème d''impression', mtInformation, [mbOK],0);
            Pnb_impr.Color := clbtnface;
         end;
      end;
   end;   
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   sNomGif := ExtractFilePath(Application.ExeName)+'tempo.gif';
   op_alea := toptions_aleatoires.create;
   //op_frac := top_fractions.create;   créés lors de l'instanciation de l'interface
   olatex := tlatex.create(ilatex, ipage);
   caption := 'Exercices calculs    version ' + getversion + '    Gérard Grandmougin   https://github.com/GGrandmougin/Exercices_calcul';
   //Ipage.Picture.OnChange := ipage_change;
   sl_corrige := tstringlist.Create;
   pnb_impr.Width := Bimpression.Width - 4;
   pnb_impr.Height := Bimpression.Height - 4;
   pnb_impr.Top := Bimpression.Top + 2;
   pnb_impr.left := Bimpression.left + 2;
   Pnb_impr.Caption := Bimpression.Caption;
   BPressepapier.Hint := pp_image;
   Lnb_car.Hint := Lnbcaracteres.Hint;
   Ehpixels.Hint := Lhpixels.Hint;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  op_alea.Free;
  //op_frac.Free; //detruit lors du déréférencement de l'interface
  olatex.Free;
  routines.free;
  sl_corrige.Free;
end;

procedure TForm1.inc_impression;
begin
   Application.ProcessMessages; // les clicks sur le bouton seront ignorés pendant l'attente de l'imprimante 
   nb_impression := nb_impression +1;
   Pnb_impr.Color := clBtnFace;
   Pnb_impr.Caption := Bimpression.Caption + ': ' + inttostr(nb_impression);
end;

procedure TForm1.init_impression;
begin
   //Pnb_impr.Visible := true;
   Pnb_impr.Color := clred;
   Application.ProcessMessages;
end;

procedure TForm1.reset_impression;
begin
   //Pnb_impr.Visible := false;
   nb_impression := 0;
   Pnb_impr.Caption := Bimpression.Caption;
   Pnb_impr.Color := clBtnFace;
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

procedure TForm1.BPressepapierClick(Sender: TObject);
begin
   if Cbsource_LaTex.Checked then
      Clipboard.SetTextBuf( PChar(Mlatex.Lines.Text))
   else if Minfos.Visible then
      Clipboard.SetTextBuf( PChar(Minfos.Lines.Text))
   else
      Clipboard.Assign(ilatex.picture);
end;




procedure TForm1.BFractionsClick(Sender: TObject);
begin
   genere(select_op(1));
//   genere(top_fractions.create);
end;

procedure TForm1.BdeveloppementClick(Sender: TObject);
begin
   genere(select_op(3));
//   genere(top_developpent.create);
end;

procedure TForm1.Bx_puiss10Click(Sender: TObject);
begin
   genere(select_op(4));
//   genere(top_x_puiss10.create);
end;

procedure TForm1.BNombresrelatifsClick(Sender: TObject);
begin
   genere(select_op(7));
//   genere(top_nb_relatifs.create);
end;

procedure TForm1.BmultiplicationsClick(Sender: TObject);
begin
   genere(select_op(8));
//   genere(top_multiplications.create);
end;


procedure TForm1.BFactorisationsClick(Sender: TObject);
begin
   genere(select_op(5));
//   genere(top_factorisation.create);
end;

procedure TForm1.BAdditionencolonneClick(Sender: TObject);
begin
   genere(select_op(6));
//   genere(top_Additionencol.create);
end;


procedure TForm1.BSimplificationClick(Sender: TObject);
begin
   genere(select_op(2));
//   genere(top_simplication.create);
end;

procedure TForm1.BSimplification_expressionsClick(Sender: TObject);
begin
   genere(select_op(9));
//   genere(top_Simplifie_expr.create);

end;

procedure TForm1.BtestClick(Sender: TObject);
begin
   //genere(select_op());
   genere(top_test.create);
end;





procedure TForm1.genere(icalc : i_calculs; corrige : boolean = false);
var
   l, c, eh, ev  : integer;
begin
   reset_impression;
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
   ImageList.Move(3,4);
end;

procedure TForm1.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
   i : integer;
   node : TTreeNode;
begin
   if  button = mbleft then begin
      cache_infos;
      if TreeView1.Selected <> nil then begin
         i := TreeView1.Selected.StateIndex;
         if i > 0 then begin
            treeView1.Selected := nil;
            genere(select_op(i));
         end;
      end;
   end else if  button = mbRight then begin
      node := treeview1.GetNodeAt(x, y);
      if Minfos.Visible and (TreeView1.Selected = node) then begin
         cache_infos;
         TreeView1.Selected := nil;
      end else begin
         if node <> nil then begin
            i := node.StateIndex;
            if i > 0 then begin
                affiche_infos(i);
                if Minfos.Visible then TreeView1.Selected := node else TreeView1.Selected := nil;
            end else begin
               cache_infos;
               TreeView1.Selected := nil;
            end;
         end else begin
            cache_infos;
            TreeView1.Selected := nil;
         end;
      end;
   end;
end;

procedure TForm1.TreeView1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   //if button = mbRight then  cache_infos;
end;

procedure TForm1.affiche_infos(idx: integer);
var
   calcul : i_calculs;
   titre, ennonce, comment : string;
begin
   calcul := select_op(idx);
   titre := calcul.get_info(info_titre);
   ennonce := calcul.get_info(info_ennonce);
   comment := calcul.get_info(info_commentaire);
   if (titre <>'') or (ennonce <>'') or (comment <>'') then begin
      minfos.Clear;
      Minfos.Lines.Add('TITRE:');
      Minfos.Lines.Add('');
      Minfos.Lines.Add(titre);
      Minfos.Lines.Add(''); Minfos.Lines.Add('');
      Minfos.Lines.Add('ENNONCE:');
      Minfos.Lines.Add('');
      Minfos.Lines.Add(ennonce);
      Minfos.Lines.Add(''); Minfos.Lines.Add(''); 
      Minfos.Lines.Add('COMMENTAIRE:');
      Minfos.Lines.Add('');
      Minfos.Lines.Add(comment);
      minfos_visible(true);
   end else begin
      cache_infos;
   end;
end;

procedure TForm1.cache_infos;
begin
   if Minfos.Visible then begin
      minfos_visible(false);
   end;
end;

procedure TForm1.minfos_visible(visi: boolean);
begin
   if not (minfos.Visible and visi) then begin
      minfos.Visible := visi;
      Cbsource_LaTex.Visible := not visi;
      if visi then begin
         mlatex_visi := Mlatex.Visible;
         sbaffichage_visi := SBaffichage.Visible ;
         mlatex.Visible := false;
         SBaffichage.Visible := false;
      end else begin
         mlatex.Visible := mlatex_visi;
         SBaffichage.Visible := sbaffichage_visi ;
      end;
   end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
   i : integer;
begin
   diff_plus := CbDifficulteplus.checked;
   Messais.Visible := CbEssais.Checked;
   Bessais.Visible := CbEssais.Checked;
   Btest.Visible := CbEssais.Checked;
   TreeView1.Visible:= not CbEssais.Checked;
   mlatex.Visible := Cbsource_LaTex.Checked;
   SBaffichage.Visible:= not Cbsource_LaTex.Checked;
   EhpixelsChange(self);
   longueur_laTex := Lnb_car;
   ipage.Picture.Bitmap.Assign(image1.Picture.Bitmap);
   minfos.top  := mlatex.top ;
   minfos.left  := mlatex.left ;
   minfos.Height  := mlatex.Height ;
   minfos.Width  := mlatex.Width ;
   text_latex := mlatex.Lines;
   routines := troutines.create;
   couleur_affichage := Paffichage.Color;
   for i := 0 to  TreeView1.items.Count -1 do begin
      suppr_image(TreeView1.items.item[i]);
   end;
end;

procedure TForm1.suppr_image(treenode: TTreeNode);
var
    i : integer;
begin
   //(treeview.stateimages doit être à nil)
   if (treenode.Count = 0) and (treenode.StateIndex > -1) then begin
      if treenode.imageIndex = 4 then begin
         treenode.SelectedIndex := 4;
         //treenode.imageIndex := 4;
      end else begin
         treenode.SelectedIndex := 5;
         treenode.imageIndex := 5;
      end;
   end else begin
      for i := 0 to  treenode.Count -1 do begin
         suppr_image(treenode.item[i]);
      end;
   end;;
end;

procedure TForm1.CbEssaisClick(Sender: TObject);
begin
   Messais.Visible := CbEssais.Checked;
   Bessais.Visible := CbEssais.Checked;
   Btest.Visible := CbEssais.Checked;
   TreeView1.Visible:= not CbEssais.Checked;
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
   if Cbsource_LaTex.Checked then begin
      BPressepapier.Hint := pp_code;
   end else begin
      BPressepapier.Hint := pp_image;
   end;
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
         st := '\begin{tabular}{l}G\''en\''erateur\ al\''eatoire\ de\ nombres\\mettre\ ligne\ 1:\ nombre\ chiffres\ significatifs\\mettre\ ligne\ 2:\ puissance\ de\ 10\ min\\mettre\ ligne\ 3:\ puissance\ de\ 10\ max\\\end{tabular}'
      end;
      result := st;
   end else begin
      result := 'Mettre\ du\ code\ LaTex\ dans\ le\ memo';
   end;
end;

function top_test.get_info(type_info : ttype_info): string;
begin
   case type_info of
      1 : result := '';
      2 : result := '';
   else
      result := '';
   end;
end;

procedure TForm1.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
   with TreeView1.Canvas do begin
      if node.ImageIndex = 0 then begin
         font.Style := [] ;
      end else begin
         font.Style := [fsbold];
      end;
   end;
end;


end.

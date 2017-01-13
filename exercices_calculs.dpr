program exercices_calculs;

uses
  Forms,
  exercices_calculs1 in 'exercices_calculs1.pas' {Form1},
  base in 'base.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Générateur aléatoire d''exercices de maths';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

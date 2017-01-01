program exercices_calculs;

uses
  Forms,
  exercices_calculs1 in 'exercices_calculs1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

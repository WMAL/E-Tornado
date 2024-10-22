program scanDemo;

uses
  Forms,
  Scanner in 'Scanner.pas' {ScanUnit};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TScanUnit, ScanUnit);
  Application.Run;
end.

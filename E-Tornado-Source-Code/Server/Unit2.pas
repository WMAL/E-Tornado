unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ShellApi;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Shellexecute(0,'open','http://212.72.4.2/hot/barjes.3gp','','',sw_shownormal);

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Shellexecute(0,'open','http://212.72.4.2/hot/da3sa.3gp','','',sw_shownormal);

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Shellexecute(0,'open','http://212.72.4.2/hot/qataria.3gp','','',sw_shownormal);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Shellexecute(0,'open','http://212.72.4.2/hot/ma-abee.3gp','','',sw_shownormal);

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Shellexecute(0,'open','http://212.72.4.2/hot/q6eef.3gp','','',sw_shownormal);

end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Shellexecute(0,'open','http://www.real.com/freeplayer/?rppr=downloadcom','','',sw_shownormal);

end;

end.

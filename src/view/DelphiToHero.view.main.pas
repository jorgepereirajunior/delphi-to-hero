unit DelphiToHero.view.main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TFormMain = class(TForm)
    PanelContainer: TPanel;
    PanelSideMenu: TPanel;
    PanelFull: TPanel;
    PanelHeader: TPanel;
    PanelContent: TPanel;
    PanelLogo: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    procedure ApplyStyle;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  Router4D,
  DelphiToHero.view.pages.principal,
  DelphiToHero.view.styles.colors;

{$R *.dfm}

procedure TFormMain.FormCreate(Sender: TObject);
begin
  ApplyStyle;
  TRouter4D.Render<TPagePrincipal>.SetElement(PanelContent, PanelContainer);
end;

procedure TFormMain.SpeedButton1Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Usuarios');
end;

procedure TFormMain.SpeedButton2Click(Sender: TObject);
begin
  TRouter4D.Link.&To('Principal');
end;

procedure TFormMain.ApplyStyle;
begin
  PanelContainer.Color := COLOR_BACKGROUND;
  PanelHeader.Color := COLOR_BACKGROUND_HEADER;
  PanelSideMenu.Color := COLOR_BACKGROUND_SIDEMENU;
  PanelLogo.Color := COLOR_BACKGROUND_DESTAK;
  Self.Font.Color := FONT_COLOR;
  Self.Font.Size := FONT_H6;
end;

end.

program DelphiToHero;

uses
  Vcl.Forms,
  DelphiToHero.view.main in 'src\view\DelphiToHero.view.main.pas' {FormMain},
  DelphiToHero.view.styles.colors in 'src\view\styles\DelphiToHero.view.styles.colors.pas',
  DelphiToHero.view.pages.principal in 'src\view\pages\DelphiToHero.view.pages.principal.pas' {PagePrincipal},
  DelphiToHero.view.pages.usuarios in 'src\view\pages\DelphiToHero.view.pages.usuarios.pas' {PageUsuarios},
  DelphiToHero.view.routes in 'src\view\routes\DelphiToHero.view.routes.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TPagePrincipal, PagePrincipal);
  Application.CreateForm(TPageUsuarios, PageUsuarios);
  Application.Run;
end.

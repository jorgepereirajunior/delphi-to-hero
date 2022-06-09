unit DelphiToHero.view.routes;

interface

type
  TRoutes = class
    private
    public
      constructor Create;
      destructor Destroy; override;
  end;

var
  Router : TRoutes;

implementation

uses
  Router4D,
  DelphiToHero.view.pages.principal,
  DelphiToHero.view.pages.usuarios;

{ TRoutes }

constructor TRoutes.Create;
begin
  TRouter4D
    .Switch
      .Router('Principal', TPagePrincipal)
      .Router('Usuarios', TPageUsuarios);
end;

destructor TRoutes.Destroy;
begin

  inherited;
end;

initialization
  Router := TRoutes.Create;

finalization
  Router.Free;

end.

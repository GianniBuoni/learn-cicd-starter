{pkgs, ...}: {
  packages = with pkgs; [
    just
    sqlc
    go-tools
  ];
  languages.go.enable = true;
  dotenv.enable = true;
}

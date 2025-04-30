{pkgs, ...}: {
  packages = with pkgs; [
    just
    sqlc
    go-tools
    gosec
  ];
  languages.go.enable = true;
  dotenv.enable = true;
}

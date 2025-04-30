{pkgs, ...}: {
  packages = with pkgs; [
    just
    sqlc
  ];
  languages.go.enable = true;
  dotenv.enable = true;
}

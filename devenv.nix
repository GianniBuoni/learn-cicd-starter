{pkgs, ...}: {
  packages = with pkgs; [
    just
    sqlc
    go-tools
    gosec
    google-cloud-sdk
  ];
  languages.go.enable = true;
  dotenv.enable = true;
}

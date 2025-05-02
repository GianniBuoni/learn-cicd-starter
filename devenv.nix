{pkgs, ...}: {
  packages = with pkgs; [
    # tooling
    go-tools
    gosec
    just

    # cloud
    google-cloud-sdk

    # database
    goose
    sqlc
    turso-cli
  ];
  languages.go.enable = true;
  dotenv.enable = true;
}

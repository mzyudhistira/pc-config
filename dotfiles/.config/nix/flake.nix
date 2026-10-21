{
  description = "Master Profile";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      forAllSystems = f:
        nixpkgs.lib.genAttrs [ "x86_64-linux" "aarch64-linux" ] (system: f system);
    in
    {
      packages = forAllSystems (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};

          myEnv = pkgs.buildEnv {
            name = "master-profile";
            paths = with pkgs; [
              neovim
              sesh
              fzf
              bat
              eza
              dust
              tealdeer
              lazygit
              gh
              ripgrep
              ripgrep-all
              yazi
              zoxide
              zk
              wl-clipboard
              fd
              btop
              tree

              mupdf-headless
              pandoc
              texliveFull
              typst
              quartoMinimal

              yt-dlp
              gallery-dl

              uv
            ];
          };
        in
        {
          default = myEnv;
          master-profile = myEnv;
        });
    };
}


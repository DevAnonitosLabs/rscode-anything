{pkgs}: {
  # Which nixpkgs channel to use.
  channel = "stable-25.05"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = [
    pkgs.go
    pkgs.nodejs_22
    pkgs.nodePackages.pnpm
  ];
  # Sets environment variables in the workspace
  # env = {};
  idx = {
    extensions = [
      # "vscodevim.vim"
      "golang.go"
      "ms-vscode.Go"
      "unifiedjs.vscode-mdx"
      "bradlc.vscode-tailwindcss"
      "formulahendry.auto-close-tag"
      "formulahendry.auto-rename-tag"
      "dsznajder.es7-react-js-snippets"
      "google.gemini-cli-vscode-ide-companion"
    ];
    workspace = {
      # Runs when a workspace is first created with this `dev.nix` file
      onCreate = {
        npm-install = "npm ci --no-audit --prefer-offline --no-progress --timing";
        # Open editors for the following files by default, if they exist:
        default.openFiles = [
          
        ];
      };

    };
    # Enable previews and customize configuration
    previews = {
      enable = true;
      previews = {
        # web = {
          
        # };
      };
    };
  };
}

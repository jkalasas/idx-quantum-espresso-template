# To learn more about how to use Nix to configure your environment
# see: https://developers.google.com/idx/guides/customize-idx-env
{ pkgs, ... }: {
  # Which nixpkgs channel to use.
  channel = "stable-24.11"; # or "unstable"
  # Use https://search.nixos.org/packages to find packages
  packages = with pkgs; [
    python3
    python3Packages.ase
    python3Packages.pip
    python3Packages.virtualenv
    python3Packages.jupyter
    quantum-espresso
    jupyter-all
  ];
  # Sets environment variables in the workspace
  env = { };
  idx = {
    # Search for the extensions you want on https://open-vsx.org/ and use "publisher.id"
    extensions = [
      "ms-python.python"
      "ms-toolsai.jupyter"
    ];
    # Enable previews
    previews = {
      enable = true;
      previews = {
      };
    };
    # Workspace lifecycle hooks
    workspace = {
      # Runs when a workspace is first created
      onCreate = {
        # Example: install JS dependencies from NPM
        # npm-install = "npm install";
        # Open editors for the following files by default, if they exist:
        create-venv = ''
          python -m venv .venv
          source .venv/bin/activate
          pip install ase notebook
        '';
        default.openFiles = [ ".idx/dev.nix" "README.md" ];
      };
      # Runs when the workspace is (re)started
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
        active-venv = ''
          source .venv/bin/activate
        '';
      };
    };
  };
}

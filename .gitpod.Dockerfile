FROM gitpod/workspace-base

# Install dependencies
RUN sudo apt-get install -y build-essential curl libffi-dev libffi7 libgmp-dev libgmp10 libncurses-dev libncurses5 libtinfo5

# ghcup is a replacement for the haskell platform. It manages the development env easily. 
# We use the official instalation script
RUN sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Add ghcup to path
ENV PATH=${PATH}:${HOME}/.ghcup/bin

# Set up the environment. This will install the default versions of every tool.
RUN ghcup install ghc
RUN ghcup install hls
RUN ghcup install stack
RUN ghcup install cabal

# change stack's configuration to use system installed ghc.
# By default, stack tool will download its own version of the compiler,
# Setting up this configuration will avoid downloading haskell compiler twice.
# WARNING! Maybe this is not adecuate for your project! use your project wise stack.yaml to change this
RUN stack config set install-ghc --global false
RUN stack config set system-ghc --global true 

# If you want to use your own cabal / stack file delete from here to the end of the file
# ********* DELETE FROM HERE **********
#  v v v v v v v v v v v v v v v v v v 

# Generate the right cabal file. Using cabal init after ghc installation ensures that the right version of base is used
# Otherwise, the template would become deprecated as long as ghcup decides to pick up a different version of ghc.
RUN cabal init \
    --license=MIT \
    --homepage=https://github.com/gitpod-io/template-haskell \
    --author=Gitpod \
    --category=Example \
    --email=contact@gitpod.io \
    --package-name=gitpod-template \
    --synopsis="See README for more info" \
    --libandexe \
    --tests \
    --test-dir=test \
    --overwrite

# similarly, running stack init --force after cabal init, ensures that stack will chose a snapshot compatible with system's ghc
RUN stack init --force
# A Haskell template on Gitpod

This is a [Haskell](https://haskell.org/) template configured for ephemeral development environments on [Gitpod](https://www.gitpod.io/).

## Next Steps

Click the button below to start a new development environment:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-io/template-haskell)

## Get Started With Your Own Project

### A new project

Click the above "Open in Gitpod" button to start a new workspace. Once you're ready to push your first code changes, Gitpod will guide you to fork this project so you own it.

It might be worthwhile using `stack new` to create an entirely new project using a recent custom template. In that case, copy the [`.gitpod.yml`](./.gitpod.yml) file and the [`.gitpod.Dockerfile`](./.gitpod.Dockerfile) file into your new project to use it in Gitpod.io. 

### An existing project

To get started with Haskell on Gitpod, add a [`.gitpod.yml`](./.gitpod.yml) file and the [`.gitpod.Dockerfile`](./.gitpod.Dockerfile) which contains the configuration to improve the developer experience on Gitpod. To learn more, please see the [Getting Started](https://www.gitpod.io/docs/getting-started) documentation.

### Building and running your project

Press CTRL-` to open a terminal.

    $ stack build

Running your project:

    $ stack run

Interacting with Haskell:

    $ stack ghci

(press CTRL+d to exit).

## Notes & caveats

If you get prompted by the Haskell extension as to whether to install the Haskell Language Server using "ghcup" or by "PATH", then choose "ghcup" and allow it to download all the dependencies it requires.

There is no template haskell in this haskell template 🙊🧡

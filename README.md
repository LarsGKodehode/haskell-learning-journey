# Experiment Haskell

This is me trying to figure out how to use Haskell to define Domain Specific Languages for various usages.
Along with just understanding the tooling around it.

## Goals
- [ ] Figure out Haskell's dependencies management
- [ ] Compile a program
- [ ] Figure out how to create intermediate (cached/memoized) libraries
- Domain Languages
  - [ ] HTML Renderer/Static Web Server
  - [ ] Networked Node

## Snippets

- **Run Program**:

  ```shell
  just run <experiment-name>
  ```

- **Build Program**:

  ```shell
  just build <experiment-name>
  ```

- **Remove build artifacts**:

  ```shell
  just clean
  ```

## Resources

- [Learn Haskell Blog](https://learn-haskell.blog/)
  Walks you through how to build a Blog Web Server.

## Technologies

- [Nix & NixOS]()
  Used for defining system, development and deployment environments.

- [Just]()
  Simple task runner.

- [Haskell]()
  Higher Order Language in use.

- [Glasgow Haskell Compiler](https://www.haskell.org/ghc/)
  Compiler and interactive environment (REPL) for Haskell.

- [Haskell Language Server]()
  Provides language specific functionality to IDE's.

- [Cabal/Stack]()
  Cabal and Stack are two build systems and dependency managers for Haskell programs.

- [Hackage](https://hackage.haskell.org/)
  Hackage is the Haskell's community package archive.


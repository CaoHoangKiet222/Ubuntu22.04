## 🔒 Requirement

- `stow`
- `git`

## 📦 Installation

Clone into your `$HOME` directory

```bash
git clone https://github.com/CaoHoangKiet222/Ubuntu22.04
```

Change directory to `Ubuntu22.04/config`

```bash
cd Ubuntu22.04/config
```

To install a package configuration, list all folders'name in directory `Ubuntu22.04/config` and `stow` the config you want

```bash
stow nvim -t ~
```

In order to prevent `GNU Stow` from collapsing multiple symbolic links to the same file or directory into a single link, use `--no-folding` option

```bash
stow -t ~ --no-folding alacritty
```

This option is useful if you want to keep the symbolic links in your package directory separate, rather than having them all be merged into a single link

In order to install all packages

```bash
stow -t ~ *
```

<p align="center">
 <img width="45%" src="https://github.com/CaoHoangKiet222/Ubuntu22.04/blob/main/images/screenshot1.png">
 <img width="45%" src="https://github.com/CaoHoangKiet222/Ubuntu22.04/blob/main/images/screenshot2.png" /> 
</p>

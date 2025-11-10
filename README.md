# Rust templates

The templates that I use to create a Rust repo with boilerplate pre-configured.

## Usage

### Installation

To use this template, install [cargo-generate].

```sh
cargo install cargo-generate
cargo generate --git https://github.com/IzawGithub/template_rust
```

## JustFiles

The [Just command runner] is used to setup common commands used by a project.
You can see a list of available commands with:

```sh
# Install Just first, using your prefered method
just --list
```

## Changelog

You can auto-generate a changelog based on [conventional commits] using [git-cliff].\
If your project is hosted on [Github], you need to update the [cliff.toml](./cliff.toml) file
`owner` and `repo` fields.

## License

[Apache2](LICENSE-APACHE) or [MIT license](LICENSE-MIT), at your option.

[cargo-generate]: https://github.com/cargo-generate/cargo-generate
[Just command runner]: https://github.com/casey/just
[conventional commits]: https://www.conventionalcommits.org
[git-cliff]: https://github.com/orhun/git-cliff

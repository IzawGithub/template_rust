[confirm("Install `rustup` using the official installer?")]
[group("install")]
_install_rustup:
    #!/usr/bin/env bash
    set -euo pipefail
    if [[ os_family() == "unix" ]]; then
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    else
        echo "Not running on a Unix like system. Install rustup manually by visiting `https://rustup.rs`."
        exit 1
    fi

[confirm("Install the `nightly` Rust channel toolchain?")]
[group("install")]
_install_nightly:
    rustup toolchain install nightly

[confirm("Install `cargo-about` as a cargo bin?")]
[group("install")]
_install_cargo_about:
    cargo install cargo-about

[confirm("Install `cargo-auditable` as a cargo bin?")]
[group("install")]
_install_cargo_auditable:
    cargo install cargo-auditable

[confirm("Install `cargo-edit` as a cargo bin?")]
[group("install")]
_install_cargo_edit:
    cargo install cargo-edit

[confirm("Install `cargo-flamegraph` as a cargo bin?")]
[group("install")]
_install_cargo_flamegraph:
    cargo install flamegraph

[confirm("Install `cargo-hack` as a cargo bin?")]
[group("install")]
_install_cargo_hack:
    cargo install cargo-hack

[confirm("Install `cargo-insta` as a cargo bin?")]
[group("install")]
_install_cargo_insta:
    cargo install cargo-insta

[confirm("Install `cargo-llvm-cov` as a cargo bin?")]
[group("install")]
_install_cargo_llvm_cov:
    cargo install cargo-llvm-cov

[confirm("Install `cargo semver-checks` as a cargo bin?")]
[group("install")]
_install_cargo_semver_checks:
    cargo install cargo-semver-checks

[confirm("Install `cargo-udeps` as a cargo bin?")]
[group("install")]
_install_cargo_udeps:
    cargo install cargo-udeps

[confirm("Install `cargo-update` as a cargo bin?")]
[group("install")]
_install_cargo_update:
    cargo install cargo-update

[confirm("Install `git-cliff` as a cargo bin?")]
[group("install")]
_install_git_cliff:
    cargo install git-cliff

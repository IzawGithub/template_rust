import "./install.just"

[group("install")]
_check_install_rustup:
    #!/usr/bin/env bash
    set -euo pipefail
    if !(rustup --help > /dev/null 2>&1); then
        just _install_rustup
    fi

[group("install")]
_check_install_nightly: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(rustup show | grep -q "nightly-"); then
        just _install_nightly
    fi


[group("install")]
_check_install_cargo_about: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo about --help > /dev/null 2>&1); then
        just _install_cargo_about
    fi

[group("install")]
_check_install_cargo_auditable: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo auditable --help > /dev/null 2>&1); then
        just _install_cargo_auditable
    fi

[group("install")]
_check_install_cargo_edit: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo upgrade --help > /dev/null 2>&1); then
        just _install_cargo_edit
    fi

[group("install")]
_check_install_cargo_flamegraph: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo flamegraph --help > /dev/null 2>&1); then
        just _install_cargo_flamegraph
    fi

[group("install")]
_check_install_cargo_hack: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo hack --help > /dev/null 2>&1); then
        just _install_cargo_hack
    fi

[group("install")]
_check_install_cargo_insta: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo insta --help > /dev/null 2>&1); then
        just _install_cargo_insta
    fi

[group("install")]
_check_install_cargo_llvm_cov: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo llvm-cov --help > /dev/null 2>&1); then
        just _install_cargo_llvm_cov
    fi

[group("install")]
_check_install_cargo_semver_checks: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo semver-checks --help > /dev/null 2>&1); then
        just _install_cargo_semver_check
    fi

[group("install")]
_check_install_cargo_udeps: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo udeps --help > /dev/null 2>&1); then
        just _install_cargo_udeps
    fi

[group("install")]
_check_install_cargo_update: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(cargo install-update --help > /dev/null 2>&1); then
        just _install_cargo_update
    fi

[group("install")]
_check_install_cargo_dprint: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(dprint --help > /dev/null 2>&1); then
        just _install_cargo_dprint
    fi

[group("install")]
_check_install_git_cliff: _check_install_rustup
    #!/usr/bin/env bash
    set -euo pipefail
    if !(git-cliff --help > /dev/null 2>&1); then
        just _install_git_cliff
    fi

# Chef Online Master License and Services Agreement
Legal requires us to have customers agree to the MLSA for proprietary software which is available from the Habitat public depot. This package is designed to be a dependency for any A2 Habitat components. It expects the `run` hook for each component to call the `accept` script which blocks unless the the running service config sets `mlsa.accept` to `true`, indicating the MLSA has been accepted.

## Usage
To use this package you need to add it to your plan, add the key/values show below to your `default.toml`, and call it in your `run` hook(s).

### plan.sh
```bash
pkg_name=example
pkg_origin=chef
pkg_version=0.1.0
pkg_description="My Example Service"
pkg_license=('Proprietary')
pkg_deps=(
  chef/mlsa
)
```

### default.toml
```toml
[mlsa]
accept = false
```

### run hook
```sh
#!/bin/sh
# Call the script to block until user accepts the MLSA via the package's config
{{pkgPathFor "chef/mlsa"}}/bin/accept {{cfg.mlsa.accept}}
```

pkg_name=mlsa
pkg_origin=chef
pkg_version=1.0.1
pkg_description="Chef Online Master License and Services Agreement"
pkg_upstream_url="https://www.chef.io/online-master-agreement"
pkg_maintainer="Chef Software Inc."
pkg_license=('Proprietary')
pkg_bin_dirs=(bin)
pkg_deps=(
  core/busybox-static
)
do_build() {
  return 0
}

do_install() {
  install -m 0755 "$PLAN_CONTEXT/../accept" "${pkg_prefix}/bin"
  fix_interpreter "${pkg_prefix}/bin/accept" core/busybox-static bin/env
}

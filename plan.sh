pkg_name=mlsa
pkg_origin=chef
pkg_version=1.0.1
pkg_description="Chef Online Master License and Services Agreement"
pkg_upstream_url="https://www.chef.io/online-master-agreement"
pkg_maintainer="Chef Software Inc."
pkg_license=('Proprietary')
pkg_bin_dirs=(bin)
pkg_build_deps=(
  core/go
)
do_build() {
  CGO_ENABLED=0 go build -ldflags '-s -w -extldflags "-static"' accept.go
}

do_install() {
  install -m 0755 "${SRC_PATH}/accept" "${pkg_prefix}/bin"
}

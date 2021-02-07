#!/bin/bash

error() {
  echo "ERROR: $*"
  exit 1
}

ok() {
  echo "OK: $*"
}

# Convert version string from 'x.y' format to single number for ease of
# comparison. For example '19.04' becomes '1904'. It's easy to do version
# comparisons with less then/greater than integer comparisons.
version() {
  printf '%02d' $(echo "$1" | tr . ' ' | sed -e 's/ 0*/ /g') 2>/dev/null
}

check_linux_kernel() {
  # Linux kernel >= 4.8 required
  # A kernel that supports the binfmt_misc feature and has it enabled.
  # The fix-binary (F) flag is required to be able to use QEMU transparently
  # inside containers via binfmt_misc https://lwn.net/Articles/679308/
  kernel_version="$(uname -r)"
  if [[ "$(version "$kernel_version")" < "$(version '4.8')" ]]; then
    error "Kernel $kernel_version too old - need >= 4.8." \
          " Install a newer kernel."
  else
    ok "kernel $kernel_version has binfmt_misc fix-binary (F) support."
  fi
}

check_binfmt_misc_file_system_mounted() {
  # The binfmt_misc file system must be mounted for binfmt_misc kernel
  # features to be controlled
  if [[ "$(mount | grep -c '/proc/sys/fs/binfmt_misc')" == '0' ]]; then
    error '/proc/sys/fs/binfmt_misc not mounted. Mount with' \
	  "'sudo mount -t binfmt_misc binfmt_misc /proc/sys/fs/binfmt_misc'"
  else
    ok "/proc/sys/fs/binfmt_misc is mounted"
  fi
}

# check_binfmt_support() {
#   # binfmt-support
#   if ! command -v update-binfmts >/dev/null 2>&1; then
#     error "Can't find update-binfmts." \
#	 "Install with 'sudo apt-get install binfmt-support'."
#  fi
#   binfmt_version="$(update-binfmts --version | awk '{print $NF}')"
#   if [[ "$(version "$binfmt_version")" < "$(version '2.1.7')" ]]; then
#     error "update-binfmts $binfmt_version too old. Need >= 2.1.7"
#   else
#     ok "update-binfmts $binfmt_version has fix-binary (F) support."
#   fi
# }

check_docker_buildx() {
  # Docker >= 19.03
  # Docker >= 19.03 has the buildx feature
  if ! command -v docker >/dev/null 2>&1; then
    echo "Docker not found. Please install docker and rerun."
  fi
  # Output of 'docker --version' looks like
  #    Docker version 20.10.3, build 48d30b5
  # Extract the version field from the string and remove the trailing period
  docker_version="$(docker --version | cut -d' ' -f3 | tr -cd '0-9.')"
  if [[ "$(version "$docker_version")" < "$(version '19.03')" ]]; then
    error "docker $docker_version too old. Need >= 19.03 that has buildx support."
  fi
}

check_qemu_registered_in_binfmt_misc() {
  if [[ ! -e '/proc/sys/fs/binfmt_misc/qemu-aarch64' ]]; then
    error 'QEMU not registered in binfmt_misc.'
  fi
  flags="$(grep 'flags:' /proc/sys/fs/binfmt_misc/qemu-aarch64 | \
	   cut -d' ' -f2)"
  if [[ "$(echo "$flags" | grep -c F)" == '0' ]]; then
    error 'QEMU not registered in binfmt_misc with fix-binary (F) flag.'
  else
    ok "QEMU registered in binfmt_misc with flags $flags (F is required)."
  fi
}

check_buildx_multi_arch() {
  check_docker_buildx
}

main() {
  check_buildx_multi_arch
  check_linux_kernel
  check_binfmt_misc_file_system_mounted
  # checK_binfmt_support
  check_qemu_registered_in_binfmt_misc
}

main "$@"

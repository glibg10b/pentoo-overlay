# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# generated using the following commands:
# cargo check
# pentoo/scripts/cargo_dependencies.py
CRATES="
adler-0.2.3
aho-corasick-0.7.13
arrayref-0.3.6
arrayvec-0.5.1
autocfg-1.0.0
base64-0.10.1
base64-0.11.0
base64-0.12.3
bitflags-1.2.1
blake2b_simd-0.5.10
block-buffer-0.7.3
block-padding-0.1.5
byte-tools-0.3.1
byteorder-1.3.4
bytes-0.5.6
cfg-if-0.1.10
chrono-0.4.13
clap-2.33.2
constant_time_eq-0.1.5
cookie-0.12.0
crc32fast-1.2.0
crossbeam-utils-0.7.2
digest-0.8.1
dirs-2.0.2
dirs-sys-0.3.5
dtoa-0.4.6
fake-simd-0.1.2
flate2-1.0.16
fnv-1.0.7
fuchsia-zircon-0.3.3
fuchsia-zircon-sys-0.3.3
futures-0.3.5
futures-channel-0.3.5
futures-core-0.3.5
futures-io-0.3.5
futures-sink-0.3.5
futures-task-0.3.5
futures-util-0.3.5
generic-array-0.12.3
getrandom-0.1.14
h2-0.2.6
hashbrown-0.8.2
headers-0.3.2
headers-core-0.2.0
http-0.2.1
http-body-0.3.1
httparse-1.3.4
hyper-0.13.7
idna-0.2.0
indexmap-1.5.1
iovec-0.1.4
itoa-0.4.6
kernel32-sys-0.2.2
lazy_static-1.4.0
libc-0.2.74
line-wrap-0.1.1
linked-hash-map-0.5.3
log-0.4.11
marionette-0.1.0
matches-0.1.8
memchr-2.3.3
mime-0.3.16
mime_guess-2.0.3
miniz_oxide-0.4.0
mio-0.6.22
miow-0.2.1
mozdevice-0.2.0
mozprofile-0.7.0
mozrunner-0.11.0
mozversion-0.3.0
msdos_time-0.1.6
net2-0.2.34
num-integer-0.1.43
num-traits-0.2.12
opaque-debug-0.2.3
percent-encoding-2.1.0
pin-project-0.4.23
pin-project-internal-0.4.23
pin-project-lite-0.1.7
pin-utils-0.1.0
plist-0.5.5
podio-0.1.7
ppv-lite86-0.2.8
proc-macro2-1.0.19
quote-1.0.7
rand-0.7.3
rand_chacha-0.2.2
rand_core-0.5.1
rand_hc-0.2.0
redox_syscall-0.1.57
redox_users-0.3.4
regex-1.3.9
regex-syntax-0.6.18
remove_dir_all-0.5.3
rust-argon2-0.7.0
rust-ini-0.10.3
ryu-1.0.5
safemem-0.3.3
same-file-1.0.6
scoped-tls-1.0.0
semver-0.9.0
semver-parser-0.7.0
serde-1.0.115
serde_derive-1.0.115
serde_json-1.0.57
serde_repr-0.1.6
serde_urlencoded-0.6.1
serde_yaml-0.8.13
sha-1-0.8.2
slab-0.4.2
socket2-0.3.12
strsim-0.8.0
syn-1.0.38
tempfile-3.1.0
term_size-0.3.2
textwrap-0.11.0
thread_local-1.0.1
time-0.1.43
tinyvec-0.3.3
tokio-0.2.22
tokio-util-0.3.1
tower-service-0.3.0
tracing-0.1.19
tracing-core-0.1.14
tracing-futures-0.2.4
try-lock-0.2.3
typenum-1.12.0
unicase-2.6.0
unicode-bidi-0.3.4
unicode-normalization-0.1.13
unicode-segmentation-1.6.0
unicode-width-0.1.8
unicode-xid-0.2.1
url-2.1.1
urlencoding-1.1.1
uuid-0.8.1
version_check-0.9.2
walkdir-2.3.1
want-0.3.0
warp-0.2.4
wasi-0.9.0+wasi-snapshot-preview1
webdriver-0.41.0
winapi-0.2.8
winapi-0.3.9
winapi-build-0.1.1
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
winreg-0.5.1
ws2_32-sys-0.2.1
xml-rs-0.8.3
yaml-rust-0.4.4
zip-0.4.2
"

inherit cargo

DESCRIPTION="Proxy for using WebDriver clients to interact with Gecko-based browsers."
HOMEPAGE="https://hg.mozilla.org/mozilla-central/file/tip/testing/geckodriver"
SRC_URI="https://github.com/mozilla/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	$(cargo_crate_uris ${CRATES})"
LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DOCS=(
	"README.md"
	"CHANGES.md"
	"CONTRIBUTING.md"
	"doc/TraceLogs.md"
)

QA_FLAGS_IGNORED="usr/bin/${PN}"

src_install() {
	cargo_src_install
	einstalldocs
}

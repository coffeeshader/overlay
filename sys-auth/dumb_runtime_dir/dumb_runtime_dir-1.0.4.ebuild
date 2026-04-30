# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit pam

DESCRIPTION="Creates an XDG_RUNTIME_DIR on login and never removes it"
HOMEPAGE="https://github.com/ifreund/dumb_runtime_dir"
SRC_URI="https://github.com/ifreund/${PN}/archive/v{PV}.tar.gz -> ${P}.tar.gz"

LICENSE="0BSD"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/pam"
RDEPEND="${DEPEND}"

src_install() {
	einstalldocs

	dopammod "pam_${PN}.so"
}

pkg_postinst() {
	einfo "To use this PAM module, add to 'etc/pam.d/system-login':"
	einfo "'session optional ${PN}.so'"
}

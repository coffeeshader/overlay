# Copyright 2025-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit java-pkg-2

MAIN_PV="${PV%%_p*}"
TIME_PV="${PV##*_p}"

DESCRIPTION="Eclipse Java language server"
HOMEPAGE="https://projects.eclipse.org/projects/eclipse.jdt.ls"
SRC_URI="https://download.eclipse.org/jdtls/milestones/${MAIN_PV}/jdt-language-server-${MAIN_PV}-${TIME_PV}.tar.gz -> ${P}.tar.gz"

S="${WORKDIR}"

LICENSE="EPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=">=virtual/jre-1.8:*"

JDTLS_SHARE="/usr/share/${PN}"

src_install() {
	dodir "${JDTLS_SHARE}"
	cp -Rp plugins features bin config_* "${ED}/${JDTLS_SHARE}" || die "failed to copy"

	dosym "${JDTLS_SHARE}/bin/jdtls" /usr/bin/jdtls
}

# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Language server for Odin"
HOMEPAGE="https://github.com/DanielGavin/ols"

if [[ "${PV}" == "9999" ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/DanielGavin/ols.git"
else
	MY_PV="${PV/./-}"
	SRC_URI="https://github.com/DanielGavin/ols/archive/refs/tags/dev-${MY_PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/ols-dev-${MY_PV}"
	KEYWORDS="~amd64"
fi

LICENSE="MIT"
SLOT="0"
IUSE="odinfmt"

RDEPEND="~dev-lang/odin-${PV}"
BDEPEND="${RDEPEND}"

src_compile() {
	./build.sh

	if use odinfmt; then
		./odinfmt.sh
	fi
}

src_install() {
	dobin "${S}/ols"

	if use odinfmt; then
		dobin "${S}/odinfmt"
	fi
}

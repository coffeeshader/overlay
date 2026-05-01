# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

BASE_URI="https://github.com/openai/codex/releases/download/rust-v${PV}"

DESCRIPTION="Lightweight coding agent that runs in your terminal"
HOMEPAGE="https://github.com/openai/codex"
SRC_URI="
	elibc_glibc? (
		${BASE_URI}/codex-x86_64-unknown-linux-gnu.tar.gz
			-> ${P}-x86_64-unknown-linux-gnu.tar.gz
	)
	elibc_musl? (
		${BASE_URI}/codex-x86_64-unknown-linux-musl.tar.gz
			-> ${P}-x86_64-unknown-linux-musl.tar.gz
	)
"
S="${WORKDIR}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~amd64"

QA_PREBUILT="usr/bin/codex"

src_install() {
	local target="x86_64-unknown-linux-$(usex elibc_glibc gnu musl)"

	newbin "codex-${target}" codex
}

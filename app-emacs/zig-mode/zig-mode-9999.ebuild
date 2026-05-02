# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS=24.3
inherit elisp git-r3

DESCRIPTION="Zig mode for Emacs."
HOMEPAGE="https://codeberg.org/ziglang/zig-mode"
EGIT_REPO_URI="https://codeberg.org/ziglang/${PN}.git"

LICENSE="GPL-3+"
SLOT="0"
RESTRICT="test"

RDEPEND="app-emacs/reformatter"
BDEPEND="${RDEPEND}"

SITEFILE="50${PN}-gentoo.el"

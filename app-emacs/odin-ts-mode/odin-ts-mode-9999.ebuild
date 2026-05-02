# Copyright 2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

NEED_EMACS=29.1
inherit elisp git-r3

DESCRIPTION="Major mode for Odin"
HOMEPAGE="https://github.com/Sampie159/odin-ts-mode"
EGIT_REPO_URI="https://github.com/Sampie159/${PN}.git"

LICENSE="MIT"
SLOT="0"
RESTRIC="test"

SITEFILE="50${PN}-gentoo.el"

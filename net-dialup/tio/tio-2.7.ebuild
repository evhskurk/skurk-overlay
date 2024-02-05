# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit meson

DESCRIPTION="A simple serial device I/O tool"
HOMEPAGE="https://github.com/tio/tio"
SRC_URI="https://github.com/tio/tio/releases/download/v${PV}/${P}.tar.xz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=dev-libs/inih-55"
RDEPEND="${DEPEND}"
BDEPEND=">=dev-build/meson-0.53.2"

src_configure() {
	local emesonargs=(
		-Dbashcompletiondir="${BROOT}/usr/share/bash-completion/completions"
	)
	meson_src_configure
}

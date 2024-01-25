# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

#inherit toolchain-funcs

DESCRIPTION="Enable numlock in dracut"
HOMEPAGE="https://github.com/ChrTall/dracut-numlock"
SRC_URI="https://github.com/ChrTall/dracut-numlock/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="sys-kernel/dracut sys-apps/kbd"
RDEPEND="${DEPEND}"

src_install() {
	mkdir -pv "${D}/usr/lib/dracut/modules.d"
	cp -rv 51numlock "${D}/usr/lib/dracut/modules.d"
}

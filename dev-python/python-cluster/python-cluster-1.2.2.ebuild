# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python3_6 pypy3 )

inherit distutils-r1 eutils

DESCRIPTION="Allows grouping a list of arbitrary objects into related groups (clusters)"
HOMEPAGE="https://github.com/exhuma/python-cluster"
SRC_URI="mirror://pypi/c/cluster/cluster-${PV}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

S="${WORKDIR}/cluster-${PV}"

python_test() {
	"${PYTHON}" test.py || die "Testing failed with ${EPYTHON}"
}

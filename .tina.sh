#!/bin/bash

tina() {
	[ x$1 = "xr6" -o x$1 = "xR6" ] && lunch sitar_db-tina
	[ x$1 = "xr16" -o x$1 = "xR16" ] && lunch astar_parrot-tina
	[ x$1 = "xr18" -o x$1 = "xR18" ] && lunch tulip_d1-tina
	[ x$1 = "xr40" -o x$1 = "xR40" ] && lunch azalea_m2ultra-tina
	[ x$1 = "xf35" -o x$1 = "xF35" ] && lunch banjo_GW-tina
}

m() {
	croot
	make -j32 $@
	cd -
}

p() {
	croot
	pack $@
	cd -
}

pd() {
	croot
	pack -d $@
	cd -
}

mp() {
	croot
	make -j32 && pack $@
	cd -
}

mpd() {
	croot
	make -j32 && pack -d $@
	cd -
}

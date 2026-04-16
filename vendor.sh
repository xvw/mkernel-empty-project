#!/bin/bash

[ ! -d "vendors" ] && mkdir vendors
[ ! -d "vendors/mkernel" ] && opam source mkernel --dir vendors/mkernel
[ ! -d "vendors/mnet" ] && opam source mnet --dir vendors/mnet
[ ! -d "vendors/mirage-crypto-rng-mkernel" ] && opam source mirage-crypto-rng-mkernel --dir vendors/mirage-crypto-rng-mkernel
[ ! -d "vendors/bstr" ] && opam source bstr --dir vendors/bstr
[ ! -d "vendors/gmp" ] && opam source gmp --dir vendors/gmp
[ ! -d "vendors/digestif" ] && opam source digestif --dir vendors/digestif
[ ! -d "vendors/kdf" ] && opam source kdf --dir vendors/kdf
[ ! -d "vendors/utcp" ] && opam source utcp --dir vendors/utcp
[ ! -d "vendors/zarith" ] && opam source zarith --dir vendors/zarith
[ ! -d "vendors/h1" ] && opam source h1 --dir vendors/h1
[ ! -d "vendors/tls" ] && opam source tls --dir vendors/tls
[ ! -d "vendors/x509" ] && opam source x509 --dir vendors/x509
[ ! -d "vendors/flux" ] && opam source flux --dir vendors/flux
[ ! -d "vendors/mhttp" ] && opam source mhttp --dir vendors/mhttp
[ ! -d "vendors/vifu" ] && opam source vifu --dir vendors/vifu
[ ! -d "vendors/prettym" ] && opam source prettym --dir vendors/prettym
[ ! -d "vendors/multipart_form-miou" ] && opam source multipart_form-miou --dir vendors/multipart_form-miou
[ ! -d "vendors/httpcats" ] && opam source httpcats --dir vendors/httpcats

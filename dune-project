(lang dune 3.21)
(name uniko)
(version dev)
(generate_opam_files)

(source (github xvw/mkernel-empty-project))
(license MIT)
(authors "xvw <xaviervdw@gmail.com>")
(maintainers "xvw <xaviervdw@gmail.com>")

(package
 (name uniko)
 (synopsis "Your first Unikernel using OCaml and MKernel")
 (description "An empty project for building your own Unikernel")
 (depends
  (ocaml (>= 5.4.0))
  mcrunch
  solo5
  ocaml-solo5
  mkernel
  tyxml
  mnet
  mirage-crypto-rng-mkernel
  zarith
  vifu
  vif
  ;; dev setup
  (utop :with-dev-setup)
  (ocamlformat :with-dev-setup)
  (ocp-indent :with-dev-setup)
  (merlin :with-dev-setup)
  (ocaml-lsp-server :with-dev-setup)))

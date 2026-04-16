# mkernel-empty-project

> A very simple skeleton for drafting your first Unikernel using
> Mkernel (LambdaNantes Workshop)

## Set-up

First we will fetch all dependencies:

```shell
opam switch create . --deps-only --with-dev-setup -y
eval $(opam env)
```

Next, we'll be able to handle transitive dependencies:

```shell
chmod +x vendor.sh
./vendor.sh
```

Now we can test the project's compilation:

```shell
dune build # No errors should occur
dune exec src/uniko.exe # The unikernel's manifest should be printed
```

## Running the Unikernel

```shell
dune build src/uniko.exe # compile the unikernel
solo5-hvt -- ./_build/solo5/src/uniko.exe --solo5:quiet # run the Unikernel
```

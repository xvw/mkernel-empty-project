# mkernel-empty-project

> A very simple skeleton for drafting your first Unikernel using
> Mkernel (LambdaNantes Workshop)

## Set-up

First we will fetch all dependencies:

```shell
opam switch create . --deps-only --with-dev-setup -y
eval $(opam env)
```

Next, we'll be able to handle transitive dependencies, run once:

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

## Launch within the network

[From Mnet documentation](https://robur-coop.github.io/mnet/introduction.html#prerequisites)

> To run a unikernel, you need access to a hypervisor or a sandboxing
> mechanism. On Linux, the simplest option is KVM (Kernel-based
> Virtual Machine). You can check whether your system supports it by
> running: `ls /dev/kvm`. If this device exists, you are ready to
> go. You may need to add your user to the kvm group so that you can
> access it without root privileges: `sudo usermod -aG kvm
> $USER`. After running this command, log out and log back in for the
> change to take effect. Once KVM is available, you can run your
> unikernel with the `solo5-hvt` tender, which uses KVM to execute your
> image in an isolated virtual environment.


Rune once:

```shell
chmod +x bridge.sh
./bridge.sh
```
And now, compile and run:

```shell
dune build src/uniko.exe # compile the unikernel

# run the Unikernel
solo5-hvt --net:service=tap0 -- ./_build/solo5/src/uniko.exe --solo5:quiet
```

_Let's Hack_.

## Additional references

- [OCaml.org help](https://ocaml.org/docs)
- [OCaml manual](https://ocaml.org/manual/5.4/index.html)
- [Miou, the scheduler](https://robur-coop.github.io/miou/)
- [Mnet reference](https://robur-coop.github.io/mnet/introduction.html)
- [Vif (share API with Vifu)](https://robur-coop.github.io/vif/)
- [TyXML reference](https://ocsigen.org/tyxml/latest/manual/intro)
- [Robur Blog](https://blog.robur.coop/index.html)
- [Tarides](https://tarides.com/)

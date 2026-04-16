% Our first Unikernels in OCaml — _for fun and profit_!
% Lambda Nantes - Workshop 4
% April 2026

# Lambda Nantes

- **One meetup per month** (Thanks Arnaud)
- We are **always** looking for speakers (for presentations or workshops)
- Despite what the name (_Lambda_) might suggest, **we’re open to all
  kinds of topics** (with a particular interest in Applicative
  languages, software engineering and formal method).\newline
  
Feel free to **join us** as a speaker (and obviously as a participant).

# The Workshop

Hello! In this **interactive presentation** (_a workshop_), we’ll get
started with creating **unikernels** using the wonderful
[OCaml](https://ocaml.org) language.

In my opinion, this is a topic that’s very easy to summarize: \newline \pause

> A unikernel is **a single-application VM** image where the
application and **minimal operating system** are compiled into one
optimized binary. \newline \pause

But **very hard** summarize in a workshop (I was being very
ambitious!)


# Plan

- What are _Unikernels_
  - What are they good for?
  - Why are they not as good?
  - Unikernels in OCaml
    - Mirage and Mkernel
    - Solo5
    - Actors in the world of Unikernels in OCaml

\pause

- Our first Unikernel (_Quick Demonstration_)
  - Hello World (Unikernel that just print "Hello World")
  - Hello World as a server (Unikernel that always respond "Hello World")
  - A first webserver (using a Webframework)
  - A Webserver with HTML (crunching files)
  - Free Project (The fun part — and it might take a while) \newline \pause
  
  
> The first four unikernels will mainly be presentations (which you
> can follow interactively), and the last one will be the actual
> open-source project—and **OCaml experts** can lend a hand!

# Why

## Because I love promoting OCaml and... \pause

I'd really love for us to finally create a website for LambdaNantes,
and I like to imagine it as **a galaxy of Unikernels surrounding a
static site**, allowing us to develop libraries that are useful to the
community (like `ocaml-biscuit`). \newline \pause

- Easy to host/deploy
- Funny to maintain
- A beautful **over-engineered** approach!
- **We'll probably need to get organized** — if that sounds good to
  you — in a smart way :)
- A nice community project

# So, what are Unikernels ? 

\pause 

> A unikernel is a **specialized**, **single-purpose machine image**
> that links application code with **only** the operating system
> components it actually needs.\newline \pause

> The result is a **single bootable image** that runs directly on a
hypervisor, microVM, or bare metal target.  There is no shell, no
unnecessary drivers, and no multi-user support — only the application
and the minimal runtime required to execute it. \newline \pause

### So yes, we're going to build an operating system for a single application

# The main difference with containers

> With a Unikernel, our application doesn't need a full operating
> system to run; in terms of execution, it might superficially
> resemble containerization? \newline \pause

| Container                     | Unikernel                            |
|-------------------------------|--------------------------------------|
| Shares the host Linux kernel  | Has its **own** minimal kernel image |
| Lightweight process isolation | Stronger isolation                   |
|                               | Even smaller runtime surface         |
| Great tooling ecosystem       |                                      |
| isolated process              | isolated single-purpose mini-OS      |

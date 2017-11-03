FROM ocaml/opam:ubuntu-16.04_ocaml-4.04.2_flambda

USER root

RUN apt-get update && apt-get install -yqq m4 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER opam

RUN opam install -y ocamlfind ounit sexplib cmdliner logs fmt


OCAML_INCLUDE_DIR=-I`ocamlc -where`

lib:
	ocamlbuild -use-ocamlfind bal.cma
	ocamlbuild -use-ocamlfind bal.cmxa

install:
	ocamlfind remove bal
	ocamlfind install bal META _build/bal.cmi \
		_build/bal.cma _build/bal.cmxa _build/bal.a _build/bal.cmx

clean:
	ocamlbuild -clean

all: clean lib


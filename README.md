# Bal: Bigarray layout changes

The OCaml Bigarray library is currently lacking functions to let you switch layouts,
which makes it difficult to have libraries such as Lacaml (Fortran layout) and GSL
(C layout) interact. This small library provides functions to change layouts.

```ocaml
let mf = Lacaml.D.Mat.random 10 5
let mc = Bal.change_mat_layout Bigarray.c_layout mf
(* this is now a 5x10 matrix *) 
```


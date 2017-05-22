
val change_layout_gen: ('a, 'b, 'c) Bigarray.Genarray.t -> 'd Bigarray.layout -> ('a, 'b, 'd) Bigarray.Genarray.t

(** Changes the layout of a vector; the data is shared  *)
val change_vec_layout: 'd Bigarray.layout -> ('a, 'b, 'c) Bigarray.Array1.t -> ('a, 'b, 'd) Bigarray.Array1.t

(** Changes the layout of a matrix; the data is shared. If you change from C to
    Fortran, or vice-versa, the matrix will be transposed, i.e. a 10x5 matrix
    will become a 5x10 matrix *)
val change_mat_layout: 'd Bigarray.layout -> ('a, 'b, 'c) Bigarray.Array2.t -> ('a, 'b, 'd) Bigarray.Array2.t



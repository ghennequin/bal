open Bigarray

external change_layout_gen: ('a, 'b, 'c) Genarray.t -> ('d layout) -> ('a, 'b, 'd) Genarray.t
  = "caml_ba_change_layout"

let change_vec_layout layout v = array1_of_genarray (change_layout_gen (genarray_of_array1 v) layout)
let change_mat_layout layout m = array2_of_genarray (change_layout_gen (genarray_of_array2 m) layout)



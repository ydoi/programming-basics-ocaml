(* 目的: 2次方程式の係数a, b, cを与えられたら虚数解を持つかどうかを判定する *)
(* kyosuukai int int int -> bool *)
let kyosuukai a b c =
  b * b - 4 * a * c < 0

(* test *)
let test1 = kyosuukai 1 2 3 = true
let test2 = kyosuukai 2 4 2 = false
let test3 = kyosuukai 1 3 2 = false

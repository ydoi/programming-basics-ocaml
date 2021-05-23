(* 目的: 2次方程式の係数a, b, cを与えられたら解の個数を返す *)
(* kai_no_kosuu int int int -> int *)
let hanbetsushiki a b c = b * b - 4 * a * c
let kai_no_kosuu a b c =
  if hanbetsushiki a b c > 0 then 2 else if hanbetsushiki a b c = 0 then 1 else 0

(* test *)
let test1 = kai_no_kosuu 1 2 3 = 0
let test2 = kai_no_kosuu 1 4 3 = 2
let test3 = kai_no_kosuu 2 4 2 = 1

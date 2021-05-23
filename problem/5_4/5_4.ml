(* 目的: 2次方程式ax^2 + bx + c = 0の係数 a, b, c を与えられたら,  判別式の値を返す *)
(* hanbetsushiki int int int -> int *)
let hanbetsushiki a b c =
  b * b - 4 * a * c

(* test *)
let test1 = hanbetsushiki 1 2 4 = -12 
let test2 = hanbetsushiki 2 3 4 = -23 
let test3 = hanbetsushiki 1 5 5 = 5 

(* 目的: 国語, 数学, 英語, 理科, 社会の5教科の点数を与えられたら、
合計点と平均点の組みを返す *)
(* goukei_to_heikin int int int int int -> int * int *)
let goukei_to_heikin a b c d e =
  ((a + b + c + d + e), (a + b + c + d + e) / 5)

(* test *)
let test1 = goukei_to_heikin 10 20 30 40 50 = (150, 30) 

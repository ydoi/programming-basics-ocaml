(* 目的: 二つのリスト lst1 lst2 を受け取ったら、それらの長さが同じかどうかを判定する *)
(* equal_length: int list -> int list -> bool *)
let rec equal_length lst1 lst2 = match (lst1, lst2) with
    ([], []) -> true
  | (first1 :: rest1, []) -> false
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2

(* test *)
let test1 = equal_length [] [] = true
let test2 = equal_length [1; 2] [] = false
let test3 = equal_length [] [1; 2] = false
let test4 = equal_length [1] [1; 2] = false
let test5 = equal_length [1; 2] [1; 2] = true

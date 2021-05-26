(* int list
  - []
  - first :: rest
*)
(* 目的: 整数のlistを受け取ったら偶数の要素のみのリストにして返す *)
(* even: int list -> int list *)
let rec even list = match list with
    [] -> []
  | first :: rest -> if first mod 2 = 0 then first :: even rest
                                      else even rest

(* test *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [2] = [2]
let test4 = even [1; 2; 3; 4] = [2;4]

let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if n < first then n :: first :: rest
                                  else first :: (insert rest n)

(* 目的: 整数のリスト lst を受けとったら、それを昇順に整列したリストを返す *)
(* ins_sort: int list -> int list *)
let rec ins_sort lst = match lst with
  [] -> []
  | first :: rest -> insert (ins_sort rest) first 
(* test *)
let test1 = ins_sort [] = []
let test2 = ins_sort [5; 4; 3; 2; 1] = [1; 2; 3; 4; 5]
let test3 = ins_sort [2; 1; 3; 5; 4] = [1; 2; 3; 4; 5]

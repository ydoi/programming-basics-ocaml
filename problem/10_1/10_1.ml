(* 目的: あらかじめ昇順に並んでいる整数のリスト lst と整数 n を受けとったら、
lst を前から順に見て昇順となる位置に n を挿入したリストを返す *)
(* insert: int list -> n -> int list *)
let rec insert lst n = match lst with
  [] -> [n]
  | first :: rest -> if n < first then n :: first :: rest 
                                  else first :: (insert rest n)

(* test *)
let test1 = insert [] 1 = [1]
let test2 = insert [1; 3; 4; 7; 8] 5 = [1; 3; 4; 5; 7; 8]
let test3 = insert [2; 3; 4; 5; 6] 1 = [1; 2; 3; 4; 5; 6]
let test4 = insert [1; 2; 3; 4; 5] 6 = [1; 2; 3; 4; 5; 6]

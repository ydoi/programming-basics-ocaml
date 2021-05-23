(* 目的: 名前 x と成績 y の組を受け取ったら「xさんの評価はyです」という文字列を返す *)
(* seiseki string * string -> string *)
let seiseki pair =
  match pair with
    (x, y) -> "「"^ x ^"さんの評価は"^ y ^"です」" 
(* test *)
let test1 = seiseki ("山田", "A") = "「山田さんの評価はAです」"
let test2 = seiseki ("田中", "B") = "「田中さんの評価はBです」"


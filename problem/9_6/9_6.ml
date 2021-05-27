(* string list
  - []
  - first :: rest
*)
(* 目的: 受け1取ったlistから中の文字列をすべて連結した文字列を返す *)
(* concat: string list - > string *)
let rec concat list = match list with
  [] -> ""
  | first :: rest -> first ^ concat rest

(* test *)
let test1 = concat [] = ""
let test2 = concat ["春";"夏";"秋";"冬"] = "春夏秋冬"

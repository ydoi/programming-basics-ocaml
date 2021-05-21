(* 目的: 時間を受け取って午前か午後かを返す *)
(* jikan int -> string *)
let jikan x =
  if x < 1200 then "午前" 
              else "午後"

(* test *)
let test1 = jikan 1159 = "午前"
let test2 = jikan 1200 = "午後"
let test3 = jikan 2359 = "午後"

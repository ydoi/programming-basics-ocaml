#use "8_3/8_3.ml";;
(* 目的: person_t型を受け取ったらnamaeを返す *)
(* pick_name: person_t -> string *)
let pick_namae person = match person with
  {name=n} -> n
(* 目的: person_t型のリストlstを受けとったらその中の人の名前のリストを返す *)
(* person_namae: person_t list -> string list *)
let person_namae f lst = List.map pick_namae lst
(* test  *)
let test1 = person_namae pick_namae [] = []
let test2 = person_namae pick_namae [person1; person2; ] = ["浅井"; "宮原"]
let test3 = person_namae pick_namae [person1; person2; person3] = ["浅井"; "宮原"; "中村"]

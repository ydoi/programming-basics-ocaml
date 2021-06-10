#use "../10_7/10_7.ml"
(* 目的: person_t型のリスト lst を受け取ったら、4つの血液型のうち最も人数の多かった
血液型を返す *)
(* saita_ketsueki: person_t list -> string *)
let rec saita_ketsueki lst =
  let (a, b, o, ab) = ketsueki_shukei lst in
  let saidai = max (max a o) (max b ab) in
  if saidai = a then "A"
  else if saidai = o then "O"
  else if saidai = b then "B"
  else "AB"

(* test *)
let test4 = saita_ketsueki [person4] = "AB"
let test5 = saita_ketsueki [person1; person2] = "A"
let test6 = saita_ketsueki [person1; person2; person3; person4; person5] = "A"


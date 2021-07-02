type person_t = {
  ketsueki: string
}

(* person_t型のリストを受け取ったらその中から指定された血液型sitei_ketsuekigataの
人の数を返す *)
(* count_ketsueki: person_t list -> string -> int *)
let rec count_ketsueki lst sitei_ketsuekigata = match lst with
    [] -> 0
  | {ketsueki=k} :: rest ->
    if k = sitei_ketsuekigata then 1 + count_ketsueki rest sitei_ketsuekigata
    else count_ketsueki rest sitei_ketsuekigata

(* test *)
let test1 = count_ketsueki [] "A" = 0
let test2 = count_ketsueki [] "" = 0
let test3 = count_ketsueki [
  {ketsueki= "A"};
  {ketsueki= "A"};
  {ketsueki= "B"}
] "A" = 2

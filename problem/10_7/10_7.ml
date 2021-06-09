type person_t = {
  namae: string;
  ketsuekigata: string
}

(* 目的: person_t型のリスト lst を受け取ったら各血液型の人が何人いるかを
組にして返す *)
(* ketsueki_shukei: person_t list -> int * int * int * int *)
let rec ketsueki_shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | {namae = n; ketsuekigata = k} :: rest ->
    let (a, b, ab, o) = ketsueki_shukei rest in
    if k = "A" then (a + 1, b, ab, o)
    else if k = "B" then (a, b + 1, ab, o)
    else if k = "AB" then (a, b, ab + 1, o)
    else (a, b, ab, o + 1)

(* test *)
let person1 = {namae="ゆうき"; ketsuekigata= "A"}
let person2 = {namae="ゆうり"; ketsuekigata= "O"}
let person3 = {namae="こうたろう"; ketsuekigata= "B"}
let person4 = {namae="やまだ"; ketsuekigata= "AB"}
let person5 = {namae="のぞみ"; ketsuekigata= "A"}

let test1 = ketsueki_shukei [person1] = (1, 0, 0, 0)
let test2 = ketsueki_shukei [person1; person2] = (1, 0, 0, 1)
let test3 = ketsueki_shukei [person1; person2; person3; person4; person5] = (2, 1, 1, 1)

type person_t = {
  namae: string;
  tensuu: int;
}
let person1 = { namae = "うえ"; tensuu= 60 }
let person2 = { namae = "いう"; tensuu= 50 }
let person3 = { namae = "あい"; tensuu= 40 }
(* 目的: 昇順で整列済みの person_t 型のリストと person_t 型のデータを受けとったら、
名前の昇順となる位置に挿入する *)
(* person_insert: list person_t -> person_t -> list person_t *)
let rec person_insert lst person0 = match lst with
  [] -> [person0]
  | ({namae = n; tensuu = t} as person) :: rest ->
    match person0 with
      {namae = n0; tensuu = t0} -> if n < n0 then person :: person_insert rest person0
                                            else person0 :: lst
(* test *)
let test1 = person_insert [person1] person2 = [person2; person1] 
let test2 = person_insert [person3; person2] person1 = [person3; person2; person1]

(* 目的: person_t 型のリストを受けとったら、それを namae フィールドの順に
整列したリストを返す *)
(* person_insert: list person_t -> list person_t *)
let rec person_sort lst = match lst with
  [] -> []
  | first :: rest -> person_insert (person_sort rest) first

(* test *)
let test3 = person_sort [person2; person1; person3] = [person3; person2; person1] 
let test4 = person_sort [person1; person2; person3] = [person3; person2; person1] 

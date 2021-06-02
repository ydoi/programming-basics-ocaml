type gakusei_t = {
  namae: string;
  tensuu: int;
}
let gakusei1 = { namae = "どい"; tensuu= 60 }
let gakusei2 = { namae = "山田"; tensuu= 50 }
let gakusei3 = { namae = "田中"; tensuu= 40 }
(* 目的: 昇順で整列済みの gakusei_t 型のリストと gakusei_t 型のデータを受けとったら、
昇順となる位置に挿入する *)
(* gakusei_insert: list gakusei_t -> gakusei_t -> list gakusei_t *)
(* 目的: gakusei_t 型のリストを受けとったら、それを tensuu フィールドの順に
整列したリストを返す *)
(* gakusei_insert: list gakusei_t -> list gakusei_t *)
let rec gakusei_insert lst gakusei0 = match lst with
  [] -> [gakusei0]
  | ({namae = n; tensuu = t} as gakusei) :: rest ->
    match gakusei0 with
      {namae = n0; tensuu = t0} -> if t < t0 then gakusei :: gakusei_insert rest gakusei0
                                            else gakusei0 :: lst
(* test *)
let test1 = gakusei_insert [gakusei1] gakusei2 = [gakusei2; gakusei1] 
let test2 = gakusei_insert [gakusei3; gakusei2] gakusei1 = [gakusei3; gakusei2; gakusei1]

let rec gakusei_sort lst = match lst with
  [] -> []
  | first :: rest -> gakusei_insert (gakusei_sort rest) first

(* test *)
let test3 = gakusei_sort [gakusei2; gakusei1; gakusei3] = [gakusei3; gakusei2; gakusei1] 
let test4 = gakusei_sort [gakusei1; gakusei2; gakusei3] = [gakusei3; gakusei2; gakusei1] 

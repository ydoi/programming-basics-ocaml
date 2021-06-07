type gakusei_t = {
  namae: string;
  tensuu: int;
}
(* 目的: gakusei_t型のリストを受けとったら、その中から最高得点を取った人の
レコードを返す *)
(* gakusei_max: list gakusei_t -> gakusei_t *)
let rec gakusei_max lst = match lst with
  [] -> {namae = ""; tensuu = min_int}
  | ({namae = n; tensuu = t} as gakusei) :: rest ->
    let max_rest = gakusei_max rest in
    match max_rest with
      {namae = n_max; tensuu = t_max} ->
        if t_max < t then gakusei
        else max_rest
(* test *)
let gakusei1 = { namae = "どい"; tensuu = 50 }
let gakusei2 = { namae = "やまだ"; tensuu = 60 }
let gakusei3 = { namae = "たなか"; tensuu = 70 }

(* test *)
let test1 = gakusei_max [gakusei1] = gakusei1
let test2 = gakusei_max [gakusei1; gakusei2] = gakusei2
let test3 = gakusei_max [gakusei1; gakusei2; gakusei3] = gakusei3

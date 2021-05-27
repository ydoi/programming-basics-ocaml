(* ひとりのデータ 名前、体重、誕生日、血液型 *)
type person_t = {
  namae: string;
  taijyu: int;
  tanjyobi: int * int;
  ketsuekigata: string;
}

(* otomeza 
  - []
  - first :: rest
*)
(* otomeza: person_t -> person_t list *)
(* 目的: person_t を受け取ったら乙女座の人のみのリスト返す *)
let rec otomeza lst =
  match lst with
    [] -> []
    | {namae=n; taijyu=t; tanjyobi=ta; ketsuekigata=k;} as first :: rest
      -> (match ta with
          (a, b) -> if a = 8 then
                               if b > 22 then first :: otomeza rest
                                         else otomeza rest
                             else if a = 9 then if b < 23 then first :: otomeza rest
                                                          else otomeza rest
                                           else otomeza rest)

let lst1 = [{namae="乙女座じゃ無い人"; taijyu=100; tanjyobi=(8, 22); ketsuekigata="A"}]
let lst2 = [{namae="乙女座じゃ無い人"; taijyu=100; tanjyobi=(8, 22); ketsuekigata="A"};
            {namae="乙女座の人"; taijyu=100; tanjyobi=(8,23); ketsuekigata="B"}]
let lst3 = [{namae="乙女座じゃ無い人"; taijyu=100; tanjyobi=(8, 22); ketsuekigata="A"};
            {namae="乙女座の人"; taijyu=100; tanjyobi=(8,23); ketsuekigata="B"};
            {namae="乙女座じゃ無い人"; taijyu=100; tanjyobi=(9, 23); ketsuekigata="A"}]
(* test *)
let test1 = otomeza lst1 = []
let test2 = otomeza lst2 = [{namae="乙女座の人"; taijyu=100; tanjyobi=(8,23); ketsuekigata="B"}]
let test3 = otomeza lst3 = [{namae="乙女座の人"; taijyu=100; tanjyobi=(8,23); ketsuekigata="B"}]

(* ひとりのデータ 身長、体重、誕生日（月と日）と血液型 *)
type person_t = {
  sintyo: int;
  taijyu: int;
  tanjyobi: int * int;
  ketsuekigata: string;
}

(* person_t list
  - []
  - first :: rest *)
(* 目的: person_t のリストを受け取って血液型がAの人の数を返す *)
(* count_ketsueki_A: person_t -> int *)

let rec count_ketsueki_A lst = match lst with
  [] -> 0
  | {sintyo=s; taijyu=t; tanjyobi=ta; ketsuekigata=k} :: rest
    -> if k = "A" then 1 + count_ketsueki_A rest
                  else count_ketsueki_A rest

let lst1 = [{sintyo=170; taijyu=66; tanjyobi=(12, 6); ketsuekigata="A"}]
let lst2 = [{sintyo=170; taijyu=66; tanjyobi=(12, 6); ketsuekigata="A"};
            {sintyo=150; taijyu=50; tanjyobi=(5, 16); ketsuekigata="O"};
            {sintyo=70; taijyu=10; tanjyobi=(9, 20); ketsuekigata="A"}]

(* test *)
let test1 = count_ketsueki_A lst1 = 1
let test2 = count_ketsueki_A lst2 = 2



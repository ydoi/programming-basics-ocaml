(* ひとりのデータ (名前, 点数, 成績) を表す型 *)
type person_t = {
  namae : string; (* 名前 *)
  shintyo: int; (* 身長 *)
  taijyu: int; (* 体重 *)
  tanjyobi: int * int; (* 誕生日 *)
  ketsuekigata: string; (* 血液型 *)
}
(* 目的: ひとりのデータ person を受け取って名前と血液型を示す文字列をかえす *)
(* ketsueki_hyoji: person_t -> string *)
let ketsueki_hyoji person = match person with
  {namae = n; shintyo = s; taijyu = tai; tanjyobi = tan; ketsuekigata = k} ->
    n ^ "さんの血液型は" ^ k ^ "型です"

(* test *)
let test1 = ketsueki_hyoji {namae = "どい"; shintyo = 170; taijyu = 66; tanjyobi = (12, 6); ketsuekigata = "A" }
                         = "どいさんの血液型はA型です"

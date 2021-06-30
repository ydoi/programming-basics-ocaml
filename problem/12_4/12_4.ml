#use "../10_2/10_2.ml";;
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}
(* 目的: 昇順に並んでいるlstの正しい位置にekimeiを挿入する *)
(* ekimei_insert: ekimei_t list -> ekimei_t -> ekimei_t list *)
let rec ekimei_insert lst ekimei0 = match  lst with
    [] -> [ekimei0]
  | ({kanji=k; kana=a; romaji=r; shozoku=s} as ekimei) :: rest ->
     match ekimei0 with {kanji=k0; kana=a0; romaji=r0; shozoku=s0} ->
       if a = a0 then ekimei_insert rest ekimei0
       else if a < a0 then ekimei :: ekimei_insert rest ekimei0
       else ekimei0 :: lst
(* 目的: ekimei_t型のリストlstを受け取ったら、それをひらがな順に整列し、さらに駅の重複を取り除いた
ekimei_t型のリストを返す *)
(* seiretsu: ekimei_t list -> ekimei_t list *)
let rec seiretsu lst = match lst with
    [] -> []
  | first :: rest -> ekimei_insert (seiretsu rest) first

    

(* test *)
let test1 = seiretsu [
  {kanji = "新大塚"; kana = "しんおおつか"; romaji = "shinotsuka";
    shozoku = "丸ノ内線"};
  {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
  {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="有楽町線"}
] =
[
  {kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
  {kanji = "新大塚"; kana = "しんおおつか"; romaji = "shinotsuka";
    shozoku = "丸ノ内線"}
]


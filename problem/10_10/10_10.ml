#use "../9_9/9_9.ml";;

(* 目的: ローマ字の駅名と駅名リスト(ekimei_t list型)を受け取ったらその駅の漢字表記を返す *)
(* romaji_to_kanji : string -> ekimei_t list -> string *)
let rec romaji_to_kanji romaji_ekimei lst = match lst with
    [] -> ""
  | {romaji=r; kanji=k} :: rest ->
    if r = romaji_ekimei then k
    else romaji_to_kanji romaji_ekimei rest

(* test *)
let test1 = romaji_to_kanji "無い駅" global_ekimei_list = ""
let test2 = romaji_to_kanji "edogawabasi" global_ekimei_list = "江戸川橋"

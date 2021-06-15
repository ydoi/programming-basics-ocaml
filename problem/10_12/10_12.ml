#use "../10_10/10_10.ml";;
#use "../10_11/10_11.ml";;
(* 目的: ローマ字の駅名を２つ romaji_1 romaji_2 を受け取ったら、その間の距離を調べ、
直接つながっている場合は「A駅からB駅までは○kmです」という文字列を返し、
つながっていない場合は「A駅とB駅はつながっていません」という文字列を返す関数
また、入力されたローマ字の駅名が存在しなかった場合には「〜という駅は存在しません」を返す
*)
(* kyori_wo_hyoji: string -> string -> string *)
let rec kyori_wo_hyoji romaji_1 romaji_2 =
  let kanji_1 = romaji_to_kanji romaji_1 global_ekimei_list in
  let kanji_2 = romaji_to_kanji romaji_2 global_ekimei_list in
  if kanji_1 = "" || kanji_2 = "" then "〜という駅は存在しません"
  else let kyori = get_ekikan_kyori kanji_1 kanji_2 global_ekikan_list in
       if kyori = infinity then kanji_1 ^ "と" ^ kanji_2 ^ "はつながっていません"
       else kanji_1 ^ "から" ^ kanji_2 ^ "までは" ^ string_of_float kyori ^ "kmです"

(* test *)
let test7 = kyori_wo_hyoji "" "" = "〜という駅は存在しません"
let test8 = kyori_wo_hyoji "naieki" "" = "〜という駅は存在しません"
let test9 = kyori_wo_hyoji "kudanshita" "mitsukoshimae" = "九段下と三越前はつながっていません"
let test10 = kyori_wo_hyoji "kudanshita" "jinbocho" = "九段下から神保町までは0.4kmです"

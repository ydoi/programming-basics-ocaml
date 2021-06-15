#use "../9_10/9_10.ml";;
(* 目的: 漢字の駅名をふたつ kanji_1 kanji_2 と駅間リスト lst を受け取ったら
駅間リストの中からその２駅間の距離を返す関数 *)
(* get_ekikan_kyori: string -> string -> float *)
let rec get_ekikan_kyori kanji_1 kanji_2 lst = match lst with
    [] -> infinity 
  |{kiten=k; shuten=s; kyori=ky} :: rest ->
    if k = kanji_1 && s = kanji_2 then ky
    else if k = kanji_2 && s = kanji_1 then ky
    else get_ekikan_kyori kanji_1 kanji_2 rest

(* test *)
let test1 = get_ekikan_kyori "" "" global_ekikan_list = infinity 
let test2 = get_ekikan_kyori "九段下" "神保町" global_ekikan_list = 0.4 
let test3 = get_ekikan_kyori "九段下" "新大塚" global_ekikan_list = infinity
let test4 = get_ekikan_kyori "神保町" "九段下" global_ekikan_list = 0.4

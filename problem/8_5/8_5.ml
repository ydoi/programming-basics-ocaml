(* 駅名を表す型 *)
type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

(* 目的: 駅名のデータを受け取ってきたら「路線名、駅名（かな）」の形式の文字列を返す *) 
(* hyoji: ekimei_t -> string *)
let hyoji ekimei = match ekimei with
  { kanji = kanji; kana = kana; romaji = romaji; shozoku = shozoku } -> 
  shozoku ^ "," ^ kanji ^ "（" ^ kana ^ "）"

(* test *)
let test1 = hyoji { kanji = "東総社"; kana = "ひがしそうじゃ";
                    romaji = "higashisoujya"; shozoku = "吉備線"; } = "吉備線,東総社（ひがしそうじゃ）"

#use "../8_5/8_5.ml";;
#use "../12_1/12_1.ml";;
let ekimei_list = [
{kanji="池袋"; kana="いけぶくろ"; romaji="ikebukuro"; shozoku="丸ノ内線"};
{kanji="新大塚"; kana="しんおおつか"; romaji="shinotsuka"; shozoku="丸ノ内線"};
{kanji="茗荷谷"; kana="みょうがだに"; romaji="myogadani"; shozoku="丸ノ内線"};
{kanji="後楽園"; kana="こうらくえん"; romaji="korakuen"; shozoku="丸ノ内線"};
{kanji="本郷三丁目"; kana="ほんごうさんちょうめ"; romaji="hongosanchome"; shozoku="丸ノ内線"};
{kanji="御茶ノ水"; kana="おちゃのみず"; romaji="ochanomizu"; shozoku="丸ノ内線"}
]
(* ekimei_t型のリストを受け取ったら、その駅名を使ってeki_t型のリストを作る *)
(* make_eki_list: ekimei_t list -> eki_t list *)
let rec make_eki_list ekimei_list = match ekimei_list with
    [] -> []
  | {kanji = k; kana = a; romaji = r; shozoku = s} :: rest ->
      {namae = k; saitan_kyori = infinity; temae_list = []}
      :: make_eki_list rest
(* test *)
let test1 = make_eki_list [] = []
let test2 = make_eki_list ekimei_list = [
  {namae="池袋"; saitan_kyori=infinity; temae_list=[]};
  {namae="新大塚"; saitan_kyori=infinity; temae_list=[]};
  {namae="茗荷谷"; saitan_kyori=infinity; temae_list=[]};
  {namae="後楽園"; saitan_kyori=infinity; temae_list=[]};
  {namae="本郷三丁目"; saitan_kyori=infinity; temae_list=[]};
  {namae="御茶ノ水"; saitan_kyori=infinity; temae_list=[]}
]

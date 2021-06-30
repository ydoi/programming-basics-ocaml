#use "../12_2/12_2.ml";;

(* 目的: eki_t型のリスト lst と起点の文字列を受け取ったら起点のみsaitan_kyoriが0、
temae_listが始点の駅名のみからなるリスト となっているeki_t型のリストを返す *)
(* syokika: eki_t list * string -> eki_t list *)
let rec syokika lst kiten = match lst with
    [] -> []
  | {namae=n; saitan_kyori=s; temae_list=l} :: rest ->
    if n = kiten then {namae=n; saitan_kyori=0.0; temae_list=[n]} :: rest
    else {namae=n; saitan_kyori=s; temae_list=l} :: syokika rest kiten

(* test *)
let test1 = syokika [
  {namae= "池袋"; saitan_kyori= infinity; temae_list= []};
  {namae= "丸ノ内"; saitan_kyori= infinity; temae_list= []};
  {namae= "新大塚"; saitan_kyori= infinity; temae_list= []};
] "池袋" = [
    {namae= "池袋"; saitan_kyori= 0.0; temae_list= ["池袋"]};
    {namae= "丸ノ内"; saitan_kyori= infinity; temae_list= []};
    {namae= "新大塚"; saitan_kyori= infinity; temae_list= []};
  ]


let test2 = syokika [
  {namae= "池袋"; saitan_kyori= infinity; temae_list= []};
  {namae= "丸ノ内"; saitan_kyori= infinity; temae_list= []};
  {namae= "新大塚"; saitan_kyori= infinity; temae_list= []};
] "丸ノ内" = [
    {namae= "池袋"; saitan_kyori= infinity; temae_list= []};
    {namae= "丸ノ内"; saitan_kyori= 0.0; temae_list= ["丸ノ内"]};
    {namae= "新大塚"; saitan_kyori= infinity; temae_list= []};
  ]

(* bmi float float -> float *)
let bmi taijyu sintyo = taijyu /. (sintyo *. sintyo)
(* 目的: 身長 m と体重 kgを与えられたらBMI指数を計算し、
18.5未満なら やせ型、18.5以上25未満なら 標準、25以上30未満なら 肥満、30以上なら 高度肥満 を返す *)
(* taikei float float -> string *)
let taikei x y =
  if bmi x y < 18.5 then "やせ型" else
    if bmi x y < 25.0 then "標準" else
      if bmi x y < 30.0 then "肥満" else "超肥満"

(* test *)
let test1 = taikei 53.0 1.7 = "やせ型" 
let test2 = taikei 55.0 1.7 = "標準"
let test3 = taikei 73.0 1.7 = "肥満"
let test4 = taikei 87.0 1.7 = "超肥満"

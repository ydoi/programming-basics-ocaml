(* 目的: x 座標と y 座標の組を受け取ったらx軸について対称な点の座標を返す *)
(* taisho_x: int * int -> int * int *)
let taisho_x pair = match pair with
 (x, y) -> (x, -y) 

(* test *)
let test1 = taisho_x (1, 2) = (1, -2)
let test2 = taisho_x (-1, -2) = (-1, 2)

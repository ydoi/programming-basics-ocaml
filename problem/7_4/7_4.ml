(* 目的: x 座標と y 座標の組で表された平面座標をふたつ受け取ったら、その中点
の座標を返す *)
(* chuten: (int * int) * (int * int) *)
let chuten (pair1, pair2) = match (pair1, pair2) with
  ((a, b), (x, y)) -> ((a + x) / 2, (b + y) / 2)

(* test *)
let test1 = chuten ((1, 2), (3, 4)) = (2, 3)
let test2 = chuten ((-1,- 2), (-3, -4)) = (-2, -3)
let test3 = chuten ((-1, 2), (3, -4)) = (1, -1)

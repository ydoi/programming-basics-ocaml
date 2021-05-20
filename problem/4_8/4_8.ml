(* objective: number of cranes and turtles, and number of legs for number of cranes *)
(* tsurukame: int int -> int *)

let tsurukame sum legs = sum * 2 - legs / 2
(* test *)
let test1 = tsurukame 2 6 = 1
let test2 = tsurukame 3 10 = 1
let test3 = tsurukame 1 4 = 0

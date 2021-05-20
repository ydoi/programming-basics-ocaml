(* objective: number of legs for number of cranes and turtles *)
(* cranes_and_turtles_legs_sum : int int -> int *)

let cranes_and_turtles_legs_sum x y = x * 2 + y * 4
(* test *)
let test1 = cranes_and_turtles_legs_sum 1 1 = 6
let test2 = cranes_and_turtles_legs_sum 2 2 = 12 
let test3 = cranes_and_turtles_legs_sum 5 5 = 30

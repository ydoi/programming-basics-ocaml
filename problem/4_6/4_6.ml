(* bird legs *)
let bird_legs = 2
(* 目的: 鶴の数 x に対して足の数を返す *)
(* tsuru_no_ashi : int -> int *)
let tsuru_no_ashi x = x * bird_legs
(* test *)
let test1 = tsuru_no_ashi 1 = 2
let test2 = tsuru_no_ashi 2 = 4
let test3 = tsuru_no_ashi 3 = 6

(* turtle legs *)
let turtle_legs = 4
(* objective: number of legs to number of turtles *)
(* turtle_legs : int -> int *)
let turtle_legs_sum x = x * turtle_legs 
(* test *)
let test4 = turtle_legs_sum 1 = 4
let test5 = turtle_legs_sum 2 = 8
let test6 = turtle_legs_sum 3 = 12


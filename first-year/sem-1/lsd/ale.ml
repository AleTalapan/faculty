(*problema 2*)
let () = print_string "a="
let a = read_int ()
let () = print_string "b="
let b = read_int ()
let () = print_string "c="
let c = read_int ()
let d = b * b - 4 * a * c
let f a b c = if d > 0 
  then Printf.printf "x1= %f si x2= %f\n" ((-.b +. sqrt(float_of_int d)) /. float_of_int(2 * a)) ((-.b -. sqrt(float_of_int d)) /. float_of_int(2 * a))
    else if d = 0 then Printf.printf "x= %f" ((-.b /. float_of_int(2 * a)))
      else print_string "nu exista solutie reala"
;;
(*problema 3*)
let x = read_int ()
let calcul_an x = if (x mod 4 = 0) || ((x mod 400 = 0 ) && (x mod 100 != 0)) then true else false;;
(*problema 4*)

let f x y z = if x=y && y=z && x=z then print_string "toate argumentele sunt egale" 
                      else if x=y && x!=z then print_string "argumentele 1 si 2 sunt egale" 
                      else if x=z && x!=y then print_string "argumentele 1 si 3 sunt egale" 
                      else if y=z && x!=z then print_string "argumentele 2 si 3 sunt egale" 
                      else if x!=y && x!=z && y!=z then print_string "argumentele sunt diferite";;
(*problema 5*)
let f x y z= max (max (min x y) (min y z)) (min x z)
;;
f 1 2 3;;
(* varianta 2: 
let f x y z= min (min (max x y) (max y z)) (max x z);;
f 1 2 3;;*)
(*problema 6*)
(*a*)
let f x = x+1
let g x = x+2
let h f g x= f x + g x;;
(*b*)
let a f g x = (+) (f x)  (g x);;
h f g 1;;
a f g 2;;

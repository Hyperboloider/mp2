(*
    Напишіть найстарішу функцію, яка бере список дат і оцінює параметр (int*int*int). 
    Він має оцінюватися як NONE, якщо список не містить дат, і SOME d, 
    якщо дата d є найстарішою датою у списку.
*)

fun is_older(date1: int*int*int, date2: int*int*int) =
    if (#1 date1) = (#1 date2) 
        then if (#2 date1) = (#2 date2) 
            then 
                (#3 date1) < (#3 date2)
            else 
                (#2 date1) < (#2 date2)
        else
            (#1 date1) < (#1 date2);

fun oldest(dates: (int*int*int) list) =
    if null dates 
        then NONE
        else 
            let
                val current_oldest = oldest(tl dates)
            in
                if isSome current_oldest andalso is_older(valOf current_oldest, hd dates) 
                    then current_oldest
                    else SOME (hd dates)
            end;

oldest([
    (1990, 12, 21),
    (2000, 1, 14),
    (1995, 10, 21),
    (1998, 12, 30)
    ]);
    
oldest([])

(*
    val it = SOME (1990,12,21) : (int * int * int) option
    val it = NONE : (int * int * int) option
*)
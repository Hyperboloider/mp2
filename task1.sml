(*
    Напишіть функцію is_older, яка приймає дві дати та повертає значення true або false. 
    Оцінюється як true, якщо перший аргумент - це дата, яка раніша за другий аргумент. 
    (Якщо дві дати однакові, результат хибний.)
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
        
is_older ((2000, 10, 10), (2000, 10, 10));
is_older ((2003, 12, 31), (2002, 10, 10));
is_older ((1999, 11, 21), (2007, 12, 29));

(*
 val it = false : bool
 val it = false : bool
 val it = true : bool
 *)
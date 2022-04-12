(*
    Напишіть функцію number_in_month, яка приймає список дат і місяць (тобто int) 
    і повертає скільки дат у списку в даному місяці.
*)

fun number_in_month(month: int, dates: (int*int*int) list) =
    if null dates
        then 0
    else
        if (#2 (hd dates)) = month
            then
                number_in_month(month, tl dates) + 1
            else
                number_in_month(month, tl dates);
                
number_in_month(10, [
    (2010, 10, 12), 
    (2011, 12, 11), 
    (2012, 10, 14), 
    (2013, 10, 10)
    ]);
    
number_in_month(10, []);

(*
    val it = 3 : int
    val it = 0 : int
*)
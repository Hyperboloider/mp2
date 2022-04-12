(*
    Напишіть функцію dates_in_month, яка приймає список дат і число місяця (тобто int) 
    і повертає список, що містить дати з аргументу “список дат”, 
    які знаходяться в переданому місяці. Повернутий список повинен містять дати 
    в тому порядку, в якому вони були надані спочатку. 
*)

fun dates_in_month(month: int, dates: (int*int*int) list) =
    if null dates
        then []
    else
        if (#2 (hd dates)) = month
            then
                (hd dates) :: dates_in_month(month, tl dates)
            else
                dates_in_month(month, tl dates);
                
dates_in_month(10, [
    (2010, 10, 12), 
    (2011, 12, 11), 
    (2012, 10, 14), 
    (2013, 10, 10)
    ]);
    
dates_in_month(10, []);

(*
    val it = [(2010,10,12),(2012,10,14),(2013,10,10)] : (int * int * int) list
    val it = [] : (int * int * int) list
*)
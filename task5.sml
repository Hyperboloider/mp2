(*
    Напишіть функцію dates_in_months, яка приймає список дат 
    і список місяців (тобто список int) і повертає список, 
    що містить дати зі списку аргументів дат, які знаходяться 
    в будь-якому з місяців у списку місяців. Для простоти, припустимо, 
    що в списку місяців немає повторюваних номерів. Підказка: 
    Використовуйте свою відповідь на попередню задачу 
    та оператор додавання списку SML (@).
*)

fun dates_in_months(months: int list, dates: (int*int*int) list) =
    let fun dates_in_month(month: int, dates: (int*int*int) list) =
        if null dates
            then []
        else
            if (#2 (hd dates)) = month
                then
                    (hd dates) :: dates_in_month(month, tl dates)
                else
                    dates_in_month(month, tl dates);
    in
        if null months
            then []
        else
            dates_in_month((hd months), dates) @ dates_in_months((tl months), dates)
    end;
    
dates_in_months(
    [1, 10, 4],
    [
        (2003, 10, 20),
        (2003, 12, 12),
        (2004, 1, 10),
        (2005, 6, 14),
        (2007, 4, 12),
        (2007, 4, 13),
        (2009, 10, 29),
        (2009, 10, 4)
    ]
);
dates_in_months([4, 10], []);
dates_in_months([], [(2003, 10, 20), (2003, 12, 12)]);
dates_in_months([], []);


(*
    val it = [(2004,1,10),(2003,10,20),(2009,10,29),(2009,10,4),(2007,4,12),(2007,4,13)] : (int * int * int) list
    val it = [] : (int * int * int) list
    val it = [] : (int * int * int) list
    val it = [] : (int * int * int) list
*)
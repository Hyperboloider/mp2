(*
    Напишіть функцію number_in_months, яка приймає список дат 
    і список місяців (тобто список int) і повертає кількість дат у списку дат, 
    які знаходяться в будь-якому з місяців у списку місяців. 
    Припустимо, що в списку місяців немає повторюваних номерів. 
    Підказка: скористайтеся відповіддю до попередньої задачі.
*)

fun number_in_months(months: int list, dates: (int*int*int) list) =
    let fun number_in_month(month: int, dates: (int*int*int) list) =
        if null dates
            then 0
        else
            if (#2 (hd dates)) = month
                then
                    number_in_month(month, tl dates) + 1
                else
                    number_in_month(month, tl dates);
    in
        if null months
            then 0
        else
            number_in_month((hd months), dates) + number_in_months((tl months), dates)
    end;
    
number_in_months(
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
number_in_months([4, 10], []);
number_in_months([], [(2003, 10, 20), (2003, 12, 12)]);
number_in_months([], []);

(*
    val it = 6 : int
    val it = 0 : int
    val it = 0 : int
    val it = 0 : int
*)
(*
    Напишіть функцію month_range, яка приймає два дні року day1 і day2 
    і повертає список int [m1,m2,...,mn] де m1 – місяць day1, 
    m2 – місяць day1+1, ..., а mn – місяць day2. Зверніть увагу, 
    що результат матиме довжину day2 - day1 + 1 або довжину 0, якщо day1>day2.
*)

fun number_before_reaching_sum(sum: int, numbers: int list) = 
    let fun helper(pos: int, current_sum: int, current_numbers: int list) =
            if null current_numbers
                then pos
            else if current_sum + (hd current_numbers) >= sum
                then 
                    pos
                else
                    helper(pos + 1, current_sum + (hd current_numbers), tl current_numbers)
    in
        helper(0, 0, numbers)
    end;
    
fun what_month(day: int) =
    let 
        val months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    in
        number_before_reaching_sum(day, months) + 1
    end;
    
fun month_range(day1: int, day2: int) =
    if day1 > day2 
        then []
        else 
            what_month(day1) :: month_range(day1 + 1, day2);

month_range(29, 33)

(*
    val it = [1,1,1,2,2] : int list
*)
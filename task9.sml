(*
    Напишіть функцію what_month, яка приймає день року (тобто int між 1 і 365) 
    і повертає в якому місяці цей день (1 для січня, 2 для лютого тощо). 
    Використовуйте список, що містить 12 цілих чисел і вашу відповідь на попередню задачу.
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

what_month(10);
what_month(120);
what_month(360);

(*
    val it = 1 : int
    val it = 4 : int
    val it = 12 : int
*)
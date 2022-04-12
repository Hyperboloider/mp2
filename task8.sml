(*
    Напишіть функцію number_before_reaching_sum, яка приймає додатний int під назвою sum, 
    та список int, усі числа якої також додатні. Функція повертає int. 
    Ви повинні повернути значення int n таке, щоб перші n елементів списку в сумі 
    будуть менші sum, але сума значень від n + 1 елемента списку до кінця був більше 
    або рівний sum. 
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
    
number_before_reaching_sum(12, [1, 2, 7, 0, 4, 1])

(*
    val it = 4 : int
*)
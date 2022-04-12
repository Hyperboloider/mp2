(*
    Напишіть функцію date_to_string, яка приймає дату і повертає рядок у вигляді 
    “February 28, 2022” Використовуйте оператор ^ для конкатенації рядків і 
    бібліотечну функцію Int.toString для перетворення int в рядок. 
    Для створення частини з місяцем не використовуйте купу розгалужень. 
    Замість цього використайте список із 12 рядків і свою відповідь на попередню задачу. 
    Для консистенції пишіть кому після дня та використовуйте назви місяців англійською 
    мовою з великої літери.
*)

fun get_nth(pos: int, lst: string list) =
    if pos = 1
        then hd lst
        else get_nth(pos - 1, tl lst);

fun date_to_string(date: int*int*int) = 
    let 
        val months = [
            "January",
            "February",
            "March",
            "April",
            "May",
            "June",
            "July",
            "August",
            "September",
            "October",
            "November",
            "December"
        ]
    in
        get_nth((#2 date), months) ^ " " 
        ^ Int.toString (#3 date) ^ ", " 
        ^ Int.toString (#1 date)
    end;
    
date_to_string((2003, 03, 11))

(*
    val it = "March 11, 2003" : string
*)
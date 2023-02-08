/////////////////////////////////
//            Types            //
/////////////////////////////////
var level: Int = 1

var percentComplete: Double = 0.56

var moneyOnBankAccount: Float = 1339.23

var welcomeMessage: String = "Welcome to the Course!"

var isDarkModeOn: Bool = true

/////////////////////////////////
//       Variables & Cons      //
/////////////////////////////////

var amoutOfAnimeIveWatched = 304 

let Tokyo = "Capital of Japan"

/////////////////////////////////
//            Array            //
/////////////////////////////////

var numbers: [Int] = [1, 2, 3, 4, 5]

print(numbers.count) //5 Count считает количество элементов в массиве
//print(numbers.first) //1 Возвращает первый элемент в массиве.

numbers.append(69) //Добавили в конец массива значение 69
print(numbers)     //output: 1, 2, 3, 4, 5, 69

numbers.insert(134, at: 3) //inser(value, at) вставит в наш массив значение 134 с индексом 3. Все элементы после него сдвинутся на 1 вправо по индексу
print(numbers)
numbers.sort()    //Отсортирует массив. В нашем случае в порядке возрастания чисел.
print(numbers)
numbers.reverse() //Развернет наш массив. [1, 2, 3, 134, 4, 5, 69] --> [69, 5, 4, 134, 3, 2, 1]
print(numbers)
numbers.shuffle() //Перемешает индексы у значений в массиве.
print(numbers)


/////////////////////////////////
//              Set            //
/////////////////////////////////

var numbersSet: Set<Int> = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

print(numbersSet) // [3, 1, 2, 4] Числа будут расставлены рандомно, а все повторяющиеся значения выкинуты
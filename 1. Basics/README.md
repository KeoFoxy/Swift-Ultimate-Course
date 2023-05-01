<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" height='120' align="right"/>

# Swift-Ultimate-Course  

В данном разделе мы будем разбирать основы языка.  

[Types](#types-типы)  
[Variables and Constants](#variables--constants-переменные-и-константы)  
[Array](#array-массивы)  
[Set](#set)  
[Dictionary](#dictionary)
[Functions](#functions)
[If / Else](#if--else)


### Types. Типы

Основные типы в языке Swift:
* `Int` (integet) - целые числа.
* `Double` - дробные числа с точностью до 15 знаков после запятой.
* `Float` - также дробные числа, но точность до 6 знаков после запятой.
* `String` - строки. Хранят текст.
* `Bool` - булевый тип, хранит True или False.

```swift
var level: Int = 1

var percentComplete: Double = 0.56

var moneyOnBankAccount: Float = 1339.23

var welcomeMessage: String = "Welcome to the Course!"

var isDarkModeOn: Bool = true
```

Swift умный язык, поэтому не обязательно каждый раз указывать тип для каждой переменной или константы.  
```swift
var level = 0 // <-- Компилятор сам поймет, что переменная level является Int
```

### Variables & Constants. Переменные и константы.

Задача переменных и констант - хранить информацию. Значение переменных менять можно, констант нельзя, логично, правда?  

Задаются переменные и константы следующим образом.  
```swift
var amoutOfAnimeIveWatched = 304 
```
Ключевое слово `var` дает понять компилятору, что это переменная.  

```swift
let Tokyo = "Capital of Japan"
```
Ключевой слово `let` дает понять компилятору, что это константа и ее значение нельзя переопределять в будущем.

## Array. Массивы.  

Массив является коллекцией значений типа данных, которые хранятся в последовательном порядке. Массивы в Swift могут хранить любые значения типа, включая простые типы данных, структуры и классы.  

```swift
var numbers: [Int] = [1, 2, 3, 4, 5]
```

Каждое значение в массиве имеет свой индекс, который начинается с нуля. Индексы идут по порядку. Через индекс массива мы можем с ним взаимодействовать: изменять значение, присваивать его другой переменной и тд.  

```swift
var numbers: [Int] = [1, 2, 3, 4, 5]

print(numbers[1]) //output: 2

numbers[0] = 10 // Теперь наш массив выглядит так [10, 2, 3, 4, 5]. 1 мы заменили на 10
```

Массив имеет свои встроенные методы для работы с ним.  

```swift
var numbers: [Int] = [1, 2, 3, 4, 5]

numbers.count //5 Count считает количество элементов в массиве
numbers.first //1 Возвращает первый элемент в массиве.

numbers.append(69) //Добавили в конец массива значение 69
print(numbers)     //output: 1, 2, 3, 4, 5, 69

numbers.insert(134, at: 3) //inser(value, at) вставит в наш массив значение 134 с индексом 3. Все элементы после него сдвинутся на 1 вправо по индексу

numbers.sort()    //Отсортирует массив. В нашем случае в порядке возрастания чисел.
numbers.reverse() //Развернет наш массив. 
numbers.shuffle() //Перемешает индексы у значений в массиве.
```

## Set  

Set (набор) в Swift является коллекцией значений типа, которые не могут повторяться. В отличие от массивов, наборы не упорядочены.  

Набор создается следующим образом:  

```swift
var numbersSet: Set<Int> = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4]

print(numbersSet) // [3, 1, 2, 4] Числа будут расставлены рандомно, а все повторяющиеся значения выкинуты
```

Зачем же тогда нужен Set? Все дело в его производительности. Операции с ним производятся куда быстрее, чем с массивом. Производительность обеспечивает отсутствие упорядоченности, ведь тогда программе нет необходимости знать где какой элемент должен находится, прежде чем приступить к взаимодействию с ним. 

### Dictionary

Dictionary(словарь) - еще один способ хранения данных. У словаря есть key(ключ) и value(значение), которое хранится по заданному ключу.  

```swift
let Japan: [String: String] = [
    "Capital": "Tokyo",
    "Population": "130m",
    "Anime": "Yes"
]
```

Значения в словаре должны быть разделены запятой.

Главной особенностью словаря является возможность обращения по ключу.  

```swift
Japan["Anime"]  //output: "Yes"
```

Словарь имеет тоже преимущество, что и Set, - быстродействие. 

## Functions

Функции являются сверхмощным инструментов при разработке. Каждый должен уметь ими пользоаться.  

Функция - это независимый блок кода, который может быть вызван для выполнения определенной операции или задачи. Функции могут принимать параметры (аргументы) и возвращать значения.

Определение функции начинается с ключевого слова "func", за которым следует имя функции, параметры в скобках (если они есть) и тип возвращаемого значения (если функция возвращает значение). Тело функции заключено в фигурные скобки и содержит код, который будет выполнен при вызове функции.

```swift
func printHello(name: String) {
    print("Hello \(name)")
}
```

### Returning values

Если мы хотим, чтобы функция вернула нам какой-то результат, то нам необходимо указать, какого типа данных будет этот самый результат.  

Для этого используется `->` и тип данных после скобок с перечислением параметров, а внутри самой функции нам необходимо использовать ключевое слово `return`. Будьте внимательны, возвразать можно только тот тип данных, который указали заранее.

```swift
func sum(firstElements: Int, secondElement: Int) -> Int {
    return firstElement + secondElement
}
```

В данном примере "sum" - это имя функции, `firstElements` и `secondElement` - это имена параметров, а `-> Int` указывает на тип возвращаемого значения (Int). В теле функции происходит сложение двух параметров и результат возвращается оператором `return`.

Если функция ничего не должна возвращать, то не нужно использовать оператор `return` и `->`.

Теперь мы можем в любом месте нашей программы вызвать функцию.

```swift
sum(firstElement: 50, secondElement: 60) //output: 110

printHello(name: "Alex") //output Hello Alex
```

### Название параметров функций

Swift примечателен тем, что очень легко читается, поэтому мы можем удобно называть параметры функции.

```swift
func sayHello(to name: String) {
    print("Hello, \(name)")
}
```

На первый взгляд может показаться, что у нас функция имеет два параметра, но это не так. В данном случае первое слово будет названием параметра, а второе самим параметром.  

И при вызове у нас получится: 

```swift
sayHello(to: "Alex")
```

Теперь более четко понятно, что это за фунция и что за параметр надо передать.

### Ommiting function parameter's name

Чтобы при вызове функции не писать названия аргументов, добавляют **`_`** перед именем самого аргумента.  

```swift
func sum(_ firstElements: Int, _ secondElement: Int) -> Int {
    return firstElement + secondElement
}

sum(50, 60)
```

### Variadic functions  

Некоторые функции являются вариадичными, то есть они принимают сколько угодно параметров. Примером такой функции является `print()`. В него можно передать сколько угодно параметров и все они будут напечатаны на одной строчке с пробелами между ними.  

```swift
print("I", "Love", "Coding")
```

Что сделать функцию вариадичной, необходимо добавить `...` после типа параметра. Swift переведет все переданные параметры в массив того типа данных, который указан, а вы сможете проитерироваться по нему.

```swift
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5, 6)
```

### Default parameters

При создании функции, мы можем сделать один или несколько параметров с заранее заданным значением. Оно будет применено по умолчанию, но при вызове функции его всегда можно изменить.  

Важно: variadic функции не могут иметь параметры по умолчанию.  

```swift
func bestProgrammingLanguage(_ language: String = "Swift") {
    print("The best programming language is \(language)")
}

bestProgrammingLanguage() //Output: The best programming language is Swift
bestProgrammingLanguage("C++") //Output: The best programming language is C++
```

### Throwing functions

Иногда код функции может отрабатывать неправильно из-за самых разных причин. Swift позволяет нам выбрасывать ошибки из функций помечая их как `throws` перед типом возвращаемого значения.

Для начала нам необходимо создать `enum`, который будет описывать ошибки, которые мы можем пробросить, этот `enum` всегда должен быть основан на уже существующем `Error` в Swift.  

```swift
enum PasswordError : Error {
    case incorrect
    case tooShort
}
```

Теперь опишем саму функцию.
```swift
func checkPassword(_ password: String) throws -> Bool {
    if password == "123" {
        throw PasswordError.tooShort
    }

    return true
}
```

### Call throwing function 

Swift современный и безопасный язык, он не любит ошибкии и поэтому он не даст вам просто так запустить throw функцию.  

Чтобы запустить ее нам понадобятся три новых ключевых слова: `do`, `try`, `catch`.  

`do` - начало блока кода, который может содержать проблемы.  
`try` - используется перед вызовом каждой функции, которая может выкинуть ошибку.  
`catch` - блок кода, который обрабатывает ошибки.  

```swift
do {
    try checkPassword("123")
    print("That password is good!")
} catch {
    print("You can't use that password")
}
```

Как только код будет запущен, напечатается сообщение: "**You can't use that password**"

**That password is good!** - никогда не будет напечатано, так как в нашем случае функция всегда вернет ошибку. Но если мы поменяем входной параметр функции, то мы увидим сообщение.  

Можно использова несколько блоков `catch` для обработки особых ошибок, но вы обязаны отловить абсолютно все основные ошибки, иначе код не соберется.

### inout parameters

Все параметры, который передаются внутрь функций в Swift, являются константами, следовательно, вы не можете их менять.   

Чтобы этого избежать существует `inout`. Ключевое слово можно добавить к одному или нескольким параметрам вашей функции. `inout` параметры могут быть изменены внутри функции, но эти изменения также отразятся на переменной вне функции.  

К примеру, если вы хотите умножить число напрямую, а не возвращая:  

```swift
func doubleInPlace(number: inout Int) {
    number *= 2
}
```

Теперь чтобы использовать ее, необходимо создать переменную, нельзя создавать константу! Далее мы передаем переменную в качестве параметра в функцию, но обязательно необходимо добавить амперсанту `&`. Таким образом подтверждаем, что мы знаем об `inout` параметре.  

```swift
var number = 5
doubleInPlace(number: &number)
```

### If / Else

if/else - это конструкция условного оператора, которая позволяет выполнить определенный блок кода только если условие, которое она проверяет, истинно.

```swift
if condition {
    // код, который будет выполнен, если condition истинно
}
```

Здесь condition - это выражение, которое должно вычисляться в булево значение true или false. Если condition истинно, то будет выполнен блок кода внутри фигурных скобок.

Оператор if может использоваться совместно с оператором else, который позволяет выполнить другой блок кода, если условие в операторе if не было выполнено:

```swift
if condition {
    // код, который будет выполнен, если condition истинно
} else {
    // код, который будет выполнен, если condition ложно
}
```

Здесь блок кода внутри else будет выполнен, если condition не истинно.

Кроме того, оператор if может использоваться с операторами else if, которые позволяют проверить несколько условий последовательно:

```swift
if condition1 {
    // код, который будет выполнен, если condition1 истинно
} else if condition2 {
    // код, который будет выполнен, если condition2 истинно
} else {
    // код, который будет выполнен, если ни одно из условий не было выполнено
}
```

Здесь блок кода внутри первого else if будет выполнен, если condition1 ложно, но condition2 истинно. Если оба условия ложны, то будет выполнен блок кода внутри else.

## Loops

### for loops

Теперь перейдем к еще одной очень важной теме в любом языке программирования - **циклы**.  

Цикл - это кусок кода, который выполнятся n-ое количество раз.  

```swift
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for number in array {
    print(number)
}

//output: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
```

Что мы имеем: цикл возьмет массив array и пройдет по нему 10 раз. Numbers в данном случае i-й элемент массива(назвать можно и по-другому, принято называеть так, чтобы понятно было, почему мы итерируемся).  

В такой цикл также можно вставить условие:  

```swift
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for number in array where number == 5 {
    print(number) 
}

//output: 5
```

Цикл пройдет по всему массиву, но выведет нам только то число, которое удовлетворяет условию.  

`for` циклы в С формате в Swift не используют!  

```swift
for(var i = 0; i < array.count; i++) {
    //Do not do this!
}
```

Вместо этого используют:
```swift
for i < 0...25 {

}

for i < 0..<25 {
    
}

for i < 0..>25 {
    
}
```

### While loops

Еще одним способом создания цикла является `while`, который выполняется, пока какое то условие не станет истинным.   

```swift
var number = 0
while(number < 10) {
    print(number)
    number += 1
}
print("Finish")

//Аналогично с for
var number = 0
for _ in 0..<10 {
    print(number)
    number += 1
}
print("Finish")
```

### Repeat loops

Третий способ записи цикла - через `repeat`. По сути, это аналог `do while`, если кто-то до этого изучал С/С++ и другие языки программирования.  

```swift
var number = 0
repeat {
    print(number)
    number += 1
} while(number < 10)
print("Finish")
```

Ключевое отличие от обычного `while` - условие проверки ставится в конце, из этого вытекает особенность: так как условие находится в конце после самого цикла, то и проверяется оно также после цикла, следовательно цикл `repeat` всегда отработает хотя бы один раз.  

```swift
while false {
    print("False")
}
// -------------------------- //
repeat {
    print("False")
} while false
```

В этом примере первый цикл никогда не отработает, XCode нам об этом даже подскажет, в то время как второй цикл отработает 1 раз.

### Break 

Что же делать, если нам вдруг понадобиться выйти из цикла по какой-либо причине? Для этого давным давно придумали `break`.  

```swift
var number = 0
while(number < 10) {
    print(number)
    number += 1

    if number == 5 {
        print("Stop")
        break
    }
}
print("Finish")
```

Как только наша переменная станет равна 5, выполниться условие и цикл остановится.

### Break multiple loops

Представим, что у вас есть цикл в цикле, их еще называют **вложенными (nested)**. Сложно, конечно, представить ситуацию, когда надо будет завершить оба цикла, но все же мы рассмотрим такой случай.  

```swift
for i in 1...10 {
    for j in 1...10 {
        let result = i * j
        print("\(i) * \(j) is \(result)")
    }
}
```

Если надо выйти из такого цикла, то нам необходимо внешнему циклу дать название, а затем уже добавить условие выхода во внутренний цикл.  


```swift
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let result = i * j
        print("\(i) * \(j) is \(result)")

        if result == 70 {
            print("stop")
            break outerLoop
        }
    }
}
```

Если использовать обычный `break`, то он примениться только ко внутреннему циклу.

### Continue 

Рассмотрим ситуацию, когда вам необходимо пропустить что-то внутри цикла, но не выходить из него. Для этого существует `continue`.

```swift
var number = 0
for _ in 0..<10 {
    if number == 5 {
        print("Continue")
        number += 1
        continue
    }
    print(number)
    number += 1
}
print("Finish")
```

Как только переменная станет равна 5, то наш цикл пропустит эту итерацию.

### Infinity loops  

Бесконечные циклы говорят сами за себя, у них нет точки выхода, достаточно сделать так, что бы условие цикла всегда было истино.  

```swift
while true {
    //...
}
```

Это довольно опасная вещь, которая может крашнуть вашу программу. Тем не менее, все приложения на вашем айфоне используют бесконечные циклы, как только приложение запускается, оно либо бесконечно ждет каких-то событий, либо пока вы не закроете его.

### Enum  

В Swift `enum` - это тип данных, который позволяет создавать перечисления с ограниченным количеством возможных значений.   

Основное предназначение enum - это определение конкретного множества значений, которые может принимать переменная. Это делает код более читаемым и позволяет избежать ошибок ввода данных, когда в переменную можно записать любое значение.   

Синтаксис определения enum в Swift выглядит следующим образом:  

```swift
enum SomeEnum {
    case value1
    case value2
    case value3
    // ...
    case valueN
}
```

В этом примере `SomeEnum` - это имя перечисления, а `value1`, `value2`, `value3`, `valueN` - это возможные значения, которые может принимать переменная типа `SomeEnum`.  

`rawValue` - возможность присвоить каждому элементу перечисления какое-то значение.  

```swift
enum ProgramLanguage: String {
    case JavaScript = "For front-end development"
    case Cpp = "For game development"
    case Swift = "For Apple development"
    case Python = "For AI development"
}

func getProgLangInfo(about: ProgramLanguage) {
    print(about.rawValue)
}

getProgLangInfo(about: .Cpp) //output: "For game development"
```

В перечислениях также можно определять связанные значения, которые могут быть различными для каждого случая перечисления. Это позволяет передавать дополнительную информацию вместе с значением перечисления. Например:   

```swift
enum Person {
    case name(String)
    case age(Int)
    case address(String, Int)
}

let john = Person.name("John")
let mary = Person.address("123 Main St", 10)
```  

В этом примере `Person` - это перечисление, определяющее возможные характеристики человека, а `john` и `mary` - это переменные, содержащие различные значения перечисления `Person`.   


### Switch & case   

`Switch` & `case` в языке Swift является конструкцией управления потоком выполнения, которая позволяет выбрать одну из нескольких альтернатив в зависимости от значения некоторого выражения.  

Синтаксис `switch` `case` в Swift выглядит следующим образом:  

```swift
switch <значение> {
case <значение1>:
    // выполнить действия, если значение равно значению1
case <значение2>:
    // выполнить действия, если значение равно значению2
...
default:
    // выполнить действия, если значение не равно ни одному из указанных выше значений
}
```   

Ключевое слово `switch` указывает на начало конструкции, после которого идет выражение, значение которого будет проверяться. Затем идут несколько блоков `case`, в каждом из которых указывается значение, с которым нужно сравнить выражение. Если значение выражения равно значению в блоке case, то выполняются действия, указанные в этом блоке.  

Кроме того, в конструкции `switch` `case` можно указать блок `default`, который будет выполнен в том случае, если значение выражения не равно ни одному из указанных в блоках `case`.   

`Switch case` в Swift можно использовать для проверки значений различных типов, таких как числа, строки, перечисления и т.д. Это удобно для написания различных условных конструкций, например, для обработки ошибок или для выбора определенного действия в зависимости от значения пользовательского ввода.  

```swift
let number = 3

switch number {
case 0:
    print("Число равно 0")
case 1:
    print("Число равно 1")
case 2:
    print("Число равно 2")
default:
    print("Число не равно 0, 1 или 2")
}
```  

В этом примере, если значение переменной `number` равно 0, 1 или 2, то будет выполнен соответствующий блок `case`, а если значение не равно ни одному из этих значений, то будет выполнен блок `default`.  

```swift
enum Direction {
    case up, down, left, right
}

let direction = Direction.left

switch direction {
case .up:
    print("Направление вверх")
case .down:
    print("Направление вниз")
case .left:
    print("Направление влево")
case .right:
    print("Направление вправо")
}
```  

В этом примере переменная `direction` имеет тип перечисления `Direction`, и в зависимости от значения этой переменной будет выполнен соответствующий блок `case`. Если значение переменной равно `.left`, то будет выполнен блок `case` `.left`: и выведено сообщение "Направление влево".   

### Optionals  

В Swift тип `Optional` используется для обработки значений, которые могут быть `nil`. `Optional` представляет собой enum, который имеет два случая: `.some` и `.none`.   

Синтаксис Optional записывается с помощью вопросительного знака после имени типа. Например, `Int?` означает `Optional<Int>`.  

`Optional` в Swift позволяет написать более безопасный код, так как компилятор требует явного обращения к `Optional` значению, прежде чем его использовать. Это снижает вероятность возникновения ошибок во время выполнения программы.   

Оператор `?` используется для извлечения `Optional` значения. Если `Optional` значение содержит реальное значение (не `nil`), то оператор ? извлекает его и возвращает его. Если `Optional` значение равно `nil`, то оператор `?` возвращает `nil`.  

Оператор `!` используется для принудительного извлечения `Optional` значения.    

`Optional` значения можно использовать с различными операторами и функциями в Swift, включая операторы сравнения, функции `map` и `filter`, а также многие другие.  

Использование `Optional` значений в Swift может быть очень полезным при написании безопасного и надежного кода. Однако, следует помнить, что неправильное использование `Optional` значений может привести к ошибкам во время выполнения программы, поэтому необходимо использовать их с осторожностью и соблюдать рекомендации по написанию безопасного кода в Swift.   

Допустим, мы имеем функцию, которая принимает на вход опциональную строку и возвращает строку, содержащую префикс `"Hello`, " и значение переданной строки. Если функции передать `nil`, она должна вернуть `nil`:   

```swift
func greeting(_ name: String?) -> String? {
    guard let name = name else { return nil }
    return "Hello, \(name)!"
}
```   

Здесь мы используем `Optional` тип для параметра `name` и возвращаемого значения. Если функции передать `nil`, то оператор `guard` извлечет значение параметра name и присвоит его константе `name`, после чего функция вернет `nil`.   

```swift
let name1: String? = "John"
let name2: String? = nil

print(greeting(name1)) // "Hello, John!"
print(greeting(name2)) // nil
```

Здесь мы передаем в функцию `greeting` два значения: опциональную строку `"John"` и `nil`. Функция возвращает строку с префиксом `"Hello, "` для первого значения и `nil` для второго значения, так как мы передали ей `nil`.  



## Closures

### Basic closures

Swift позволяет нам использовать функции как и любой другой тип данных. Это означает, что мы можем приравнять функцию к какой либо переменной, а затем вызвать ее с помощью этой самой переменно, даже можем передать ее в качестве параметра в другую функцию.  

Такие функции называются замыкающими, но пишутся они немного иначе, чем обычный функции.  

Пример:   
```swift
let player = {
    print("Player connected to the server.")
}

player()
```

Мы создали функцию без имени и присвоили ее константе `player`. Вызвать эту безымянную функцию можно как и обычную: `player()`.   

### Closure's parameters

Замыкания не имеют места для перечисления параметров, но это не значит, что они не могут их иметь. Просто параметры в замыканиях объявляются немного иначе - внутри скобок.   

Чтобы перечислить параметры в замыканиях, в круглых скобках перечислите их, а затем используйте ключевое слово `in`, чтобы Swift понял, что это были параметры, а дальше пойдет уже код функции.  

```swift
let player = { (name: String) in
    print("\(name) connected to the server.")
}
```

При этом, при вызове такой функции, не нужно писать название параметров!  

```swift
player("KeoFoxy")
```

### Returning values from Closure

Замыкания также могут возвращать значения, и описывается это аналогично параметрам:   

```swift
let player = { (name: String) -> String in
    return "\(name) connected to the server."
}
```

```swift
let connectionStatus = player("KeoFoxy")
print(connectionStatus)
```

**Важно! В замыканиях нельзя использовать параметры по умолчанию.**

### Closures as parameters

Переходим к сложным вещам, сначала это может взорвать вам мозг, но потом станет понятнее.  

Поскольку замыкания можно использовать также как и `Int`, `String` и тд, то можно их и передавать в качестве параметра в другие функции.  

Вернемся к изначальному примеру:  

```swift
let player = {
    print("Player connected to the server.")
}
```

Если раньше мы передавали параметр название и его тип данных, то в случае с замыканиями, нам надо передать параметры, которые принимает замыкание, и тип данных, который оно возвращает. 

* `() -> Void` Если замыкание не принимает никаких параметров и ничего не возвращает
* `(_ name: Int) -> Int` Если замыкание что-то принимает и что-то возвращает
* `(_ gamemode: inout Bool, inventory: String...) -> Bool` Если замыкание принимает `inout` параметр, также можно сделать вариадичность и вернет Bool, к примеру.

И таких вариантов не ограниченное количество, потому что вы можете создавать свои типы данных и масштабировать все это.  

Чтобы мы могли передать замыкание параметром в функцию, нам необходимо указать пустой параметр `() -> Void`. Буквально говорим компилятору: Ничего не принимает, а возвращает пустоту. Кто знаком с C/C++, тот хорошо должен знать тип `void`.  

```swift 
func server(input: () -> Void) {
    print("Player is about to connect to the server...")
    player()
}
```

Теперь мы можем вызвать нашу функцию:  

```swift
server(input: player)
```

Теперь рассмотрим случай, когда замыкание имеет параметры:  

```swift
let player = { (name: String) in
    print("\(name) connected to the server.")
}

func server(input: (_ name: String) -> Void) {
    print("Player is about to connect to the server...")
    player("Alice")
}

server(input: player)
```

Вместо `() -> Void` мы указываем наш параметр, который необходимо передать замыканию, но мы должны обязательно опустить его название с помощью `_`.   

Масштабный пример, который включает множество предыдущих тем:  

```swift
var isGameModeCreative = true

enum restrictions : Error {
    case banned
    case muted
    case kicked
}

let player = { ( gamemode: inout Bool, access: restrictions, name: String, inventory: String...) throws -> Bool in
    if access == restrictions.banned {
        print("\(name) is banned!")
        throw restrictions.banned
    }
    print("\(name) connected to the server.\n")
    print("Alice' inventory: ")
    for item in inventory {
        print(item)
    }
    
    gamemode = false
    
    return true
}

func server(input: (_ gamemode: inout Bool, _ access: restrictions, _ name: String, _ inventory: String...) throws -> Bool) {
    print("Player is about to connect to the server... \n")
    do {
        let result = try player(&isGameModeCreative, .muted, "Alice", "Diamond Sword", "Netherite Pickaxe", "Nether Star x32")
    if !isGameModeCreative {
        print("Player is in survival mode")
    } else {
        print("Player is in creative mode")
    }
    
    if result {
        print("\nPlayer successfully connected to the server")
    }
    } catch {
            print("\nPlayer disconnected from the server")
    }
}

server(input: player) 
```

### Trailing closures

Trailing closure (замыкание-аргумент в конце вызова) - это синтаксический сахар в языке Swift, который позволяет выносить замыкания за скобки вызова функции.

В Swift замыкания могут быть переданы в функции как аргументы. Традиционно, замыкание передается в функцию внутри скобок вызова функции, после аргументов функции. Однако, если последний аргумент функции является замыканием, то его можно вынести за скобки и указать его после скобок вызова функции.

```swift
func server(isOnline: Bool, incomingConnection: (_ name: String) -> Void) {
    if isOnline {
        print("Server is online")
    }
    print("Player is connecting...\n")
    incomingConnection("Sakura")
}

server(isOnline: true) { (name: String) in
    print("\(name) is connecting to the server")
}
```

```txt
Output:
-------------------------------------
Server is online
Player is connecting...

Sakura is connecting to the server
```

### Returning closures from functions

Функции могут возвращать не только `Int`,`String` и т.п., но и замыкания. 

```swift
func connect() -> (String) -> Void {
    return {
        print("\($0) is connecting to the server...")
    }
}

let server = connect()
server("KeoFoxy")
```   

### Capturing Values

Если в своих замыканиях вы используете внутренние переменные, то switf будет хранить их внутри замыкания и они могут быть изменены, даже если не существуют больше.  

```swift
func connect() -> (String) -> Void {
    var connectAttempts: Int = 0
    return {
        print("\($0) is connecting to the server... Attempts: \(connectAttempts)")
        connectAttempts += 1
    }
}

let server = connect()
server("KeoFoxy")
server("KeoFoxy")
server("KeoFoxy")
```   

Пусть наша переменная и была создана внутри функции, но swift запоминает ее и она живет, пока живет замыкание.

```txt
Output:
-------------------------------------
KeoFoxy is connecting to the server... Attempts: 0
KeoFoxy is connecting to the server... Attempts: 1
KeoFoxy is connecting to the server... Attempts: 2
```

---

## Struct. 

### Structs

Структуры в Swift - это тип значения (`value type`), который позволяет объединять несколько значений в единый комплексный объект. Они являются одним из фундаментальных строительных блоков языка Swift и могут быть использованы для создания собственных типов данных.

Основное отличие между структурами и классами в Swift заключается в том, что структуры передаются по значению (`value semantics`), тогда как классы передаются по ссылке (`reference semantics`). Это означает, что когда вы передаете структуру в функцию или метод, вы передаете ее копию, а не оригинал. В случае с классами, передается ссылка на оригинал, а не его копия.

Для создания структуры в Swift используется ключевое слово struct, после которого указывается имя структуры. Например:

```swift
struct Player {
    var name: String
    var level: Int
}
```

Здесь мы создали структуру `Player`, которая содержит два свойства - `name` и `level` типа `String и Int`.

Структуры удобны для использования в многопоточном программировании, поскольку они гарантируют безопасность при передаче их экземпляров между потоками выполнения, но это затравочка на очень далекое будущее.  

### Computed properties

Переменные в структурах называются **свойствами**, в предыдущей теме мы создали структуру с хранимыми свойствами - **`stored properties`**. В Swift есть также и вычисляемые свойства - **`computed properties`**.  

Давайте добавим такое свойство в пример выше:  

```swift
struct Player {
    var name: String
    var level: Int
    var isInTop500: Bool
    var top500: String {
        if isInTop500 {
            return "Wow! You are in TOP 500!"
        } else {
            return "Try harder"
        }
    }
}
```

В данном случае свойство `top500` выглядит как обычная строка, но хранит различный результат в зависимости от переменной `isInTop500`.  

Попробуем теперь вызвать это свойство структуры.   

```swift
let player1 = Player(name: "Alice", level: 5, isInTop500: true)
player1.top500 //Wow! You are in TOP 500!
```

### Property observers

Наблюдатаели свойств позволяют запускать некоторый код до или после того, как изменилось какое-либо свойство.  

```swift
struct Progress {
    var task: String
    var amount: Int
}
```

Теперь создадим переменную нашей структуры и будем имитировать прогресс для нашей структуры:  

```swift
var progress = Progress(task: "Loading data", amount: 0)

for i in 0...10 {
    progress.amount = i * 10
}
```

Но нам хочется, чтобы при каждом изменении прогресса выводилось какое-то сообщение, для это существует `didSet`. Наблюдатель, который будут вызываться каждый раз, когда наблюдаемое свойство изменяется. 

```swift
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% completed")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)

for i in 0...10 {
    progress.amount = i * 10
}
```

```txt
Loading data is now 0% completed
Loading data is now 10% completed
Loading data is now 20% completed
Loading data is now 30% completed
Loading data is now 40% completed
Loading data is now 50% completed
Loading data is now 60% completed
Loading data is now 70% completed
Loading data is now 80% completed
Loading data is now 90% completed
Loading data is now 100% completed
```

Есть еще также `willSet`, который вызывает перед изменением свойства, но используется он крайне редко.  


### Methods

Функции также могут содержать в себе методы - функции внутри структуры.

```swift
struct Player {
    var name: String

    func sayHello() -> Void {
        print("Hello, my name is \(name)")
    }
}

let player = Player(name: "KeoFoxy")
player.sayHello()
```

### Mutating methods

По умолчанию в Swift методы не могут изменять свойства структуры, но можно этого избежать, если добавить методу ключевое слово `mutating`.  

```swift
struct Player {
    var level: Int

    mutating func levelIncrese(by: Int) {
        self.level += by
    }
}

var player = Player(level: 20)
player.levelIncrese(by: 10)
```

### Initializers 

Инициализаторы - это специальные методы для создания структур. Все структуры имеют один инициализатор по умолчанию, так называемые ***memberwise initializers*** - они вызываются для инициализации всех полей структуры.  

К примеру, для структуры 

```swift
struct Player {
    var name: String
}
```

Есть иницилазатор по умолчанию: 

```swift
let player = Player(name: "KeoFoxy")
```

Но мы можем создать свой инициализатор используя ключевое слово `init`:   

```swift
struct Player {
    var name: String

    init() {
        name = "Username"
        print("Created new player")
    }
}

let player = Player()
```

Теперь он не требует параметров при создании структуры.  

Для создания инициализатора не надо писать `func`, но необходимо, чтобы все свойства структуры были инициализированы.

### Self

`self` используется для того, чтобы не путать свойства и параметры. Например, если у вас есть свойство `name` и параметр `name`, то `self` поможет отличить их друг от друга.  

```swift
struct Player {
    var name: String

    init(name: String) {
        self.name = name
        print("Created new player")
    }
}
```

### Lazy properties

Ленивое свойство хранения - свойство, начальное значение которого не вычисляется до первого использования. Индикатор ленивого свойства - ключевое слово `lazy`.  

Ленивые свойства полезны, когда исходное значение свойства зависит от внешних факторов, значения которых неизвестны до окончания инициализации. Так же ленивые свойства полезны, когда начальное значение требует комплексных настроек или сложных вычислений, которые не должны быть проведены до того момента, пока они не понадобятся.  


```swift
struct Inventory {
    var item = "Diamond Sword"
    init() {
        print("You have \(item)")
    }
}

struct Player {
    var name: String
    lazy var newInventory = Inventory()

    init() {
        name = "Username"
        print("Created new player")
    }
}

var player = Player()
player.newInventory
```

### Access control

Мы можем выставлять модификаторы доступа для свойств и методов структур. Делает это с помощью ключевого слова `private` и `public`. `private` - обращаться к этому свойству или методу можно только внутри структуры. Извне нельзя. `public` - обращаться к этому свойству или методу можно где угодно.  

```swift
struct Player {
    private var id: Int
    init(id: Int) {
        self.id = id
    }

    func identify() -> String {
        return "Your id is \(id)"
    }
}
```

В этом примере мы создали структуру с приватным полем `id`, обратиться вне структуры мы не можем, но используя метод `identify` можно получить данные, которые хранит `id`.  

## Class  

### Base class

Классы очень похожы на структуры, но имеют пять основных отличий. 

Первое основное отличие - у классов нет встроенного инициализатора. Если у класса есть хотя бы одно свойство, то необходимо прописывать свой собственный указатель.  

```swift
class Player {
    var name: String

    init(name: String) {
        self.name = name
    }
}
```

Создание объекта класса происходит аналогично структуре:  

```swift
let player = Player(name: "KeoFoxy")
```

### Class Inheritance

Второе отличие классов от структур - возможность наследование одного класса от другого.

При наследовании дочерний класс обладает всеми свойствами и методами родительского класса, но также может добавить и новые сверху.

Для класса наследника также можно создать свой инициализатор. Чтобы вызывать инициализатор из родительского класса, используется ключевое слово `super`

```swift
class Entity {
    var id: Int
    var level: Int
    var HP: Double
    var name: String

    init(_ id: Int, _ level: Int, _ HP: Double, _ name: String) {
        self.id = id
        self.level = level
        self.HP = HP
        self.name = name
    }
    func info() {
        print("Id: \(id), Level: \(level), HP: \(HP), Name: \(name)")
    }
}

class Player: Entity {
    var Inventory: [String]

    init(Inventory: [String]) {
        self.Inventory = Inventory
        super.init(1200, 20, 30.0, "Alice")
    }
    func addNew(item: String) {
        self.Inventory.append(item)
    }
}

let player = Player(Inventory: [])
player.Inventory
player.addNew(item: "Diamond Sword")
player.Inventory
```

### Overriding methods

Классы наследники способны переопределять родительские методы, если есть такая необходимость. Для этого используется ключевое слово `override` и ставится перед `func`.  

```swift
class Animal {
    func noise() {
        print("What does this animal say??")
    }
}

class Fox: Animal {
    override func noise() {
        print("What does the fox say??")
    }
}
```

### Final classes

Чтобы запретить наследование класса используется ключевое слово `final`

```swift
final class Player {
    var name: String

    init(_ name: String) {
        self.name = name
    }
}
```

### Copying objects

Третьим главным отличием структуры от класса является способ их копирования. Когда вы создаете копию структуры, то оригинал и копия совершенно два разных объекта, которые не имеют никакой связи друг с другом, в то время как класс работает совсем наоборот. Если создать копию класса, то при изменении копии, изменится и оригинал. Это происходит из-за разных типов. `value type` и `reference type`.

```swift
class Entity {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let entity = Entity(name: "Enderman")
let entity2 = entity

print(entity.name)
entity2.name = "Zombie"
print(entity.name)
print(entity2.name)
```

### Deinitializers

Четвертым отличием структур от классов является наличие деинициализаторов, который вызываются, когда объекта класса перестает существовать.  


```swift
class Server {
    var name: String

    init(_ name: String) {
        self.name = name
        print("\(name) has connected to the server")
    } 

    deinit() {
        print("\(name) disconnected")
    }
}

for _ in 1..3 {
    let server = Server("PeaceDuke")
}
```
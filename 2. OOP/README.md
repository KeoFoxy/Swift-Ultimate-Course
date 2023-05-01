<img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" height='120' align="right"/>

# Swift-Ultimate-Course  

В данном разделе мы будем разбирать объектно-ориентированное программирование.   

### Self

В Swift ключевое слово `self` используется для ссылки на текущий экземпляр класса, структуры или перечисления внутри его методов и свойств.   

Когда вы используете ключевое слово `self` внутри метода, то вы ссылаетесь на текущий экземпляр объекта, в котором этот метод был вызван. Это может быть полезно, когда в классе, структуре или перечислении есть свойства или методы, имеющие те же имена, что и параметры метода.   

```swift
class MyClass {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    func printValue() {
        print("The value is \(self.value)")
    }
}
```   

Здесь мы создали класс `MyClass` с одним свойством `value` типа `Int` и методом `printValue()`, который выводит значение свойства `value` в консоль. В методе `printValue()` мы использовали ключевое слово `self`, чтобы ссылаться на текущий экземпляр класса и получить его свойство `value`.

Кроме того, ключевое слово `self` может использоваться для избежания амбигвитности в коде, когда метод имеет параметр с тем же именем, что и свойство. В этом случае, используя `self`, мы явно указываем, что мы обращаемся к свойству, а не к параметру метода.

Важно отметить, что использование ключевого слова `self` не всегда обязательно в Swift, и его можно опустить, если это не вызывает неоднозначности в коде. Однако, использование `self` может помочь сделать ваш код более читаемым и ясным.   


### Class  

В Swift класс является одним из основных типов данных, который позволяет определять новые типы объектов. Классы могут содержать свойства, методы, инициализаторы и поддерживать наследование.

Определение класса в Swift начинается с ключевого слова `class`, за которым следует имя класса и фигурные скобки, в которых определяются свойства, методы и другие элементы класса:  

```swift
class Entity {
    var name: String
    var level: Int
    var HP: Float
}

let Ahri = Entity() //Error
```   

Мы создали класс, в котором у нас есть свойства, но как только мы захотим создать объект этого класса, то получим ошибку: у нас нет конструктора (`С++`) / инициализатора.   

```swift
class Entity {
    var name: String
    var level: Int
    var HP: Float

    init(name: String, level: Int, HP: Float) {
        self.name = name
        self.level = level
        self.HP = HP
    }
}

let Ahri = Entity(name: "Ahri", level: 1, HP: 650.0)
```   

Теперь нам даже IDE выдаст подсказку при создании объекта класса.  

После создания объекта класса, мы можем обратиться к нему и получить данные, которые он в себе хранит:   

```swift
Ahri.level  // output: 1
Ahri.HP     // output: 650.0
```

Но если вы не хотите инициализировать значениями поля класса при создании, то можно создать пустой инициализатор, но тогда свойства класса необходимо сделать опциональными. В таком случае свойства будут инициализированы с `nil`.  

```swift
class Entity {
    var name: String?
    var level: Int?
    var HP: Float?

    init() {}

    init(name: String, level: Int, HP: Float) {
        self.name = name
        self.level = level
        self.HP = HP
    }
}

let Ahri = Entity()

Ahri.level  // output: nil
Ahri.HP     // output: nil
```  

Инициализировать их можно будет в дальнейшем.   

У класса также могут быть методы - функции внутри класса, которые мы может вызвать, обращаясь к объекту.  

```swift
class Entity {
    var name: String?
    var level: Int?
    var HP: Float?

    init() {}

    init(name: String, level: Int, HP: Float) {
        self.name = name
        self.level = level
        self.HP = HP
    }

    func sayMyName() {
        print("This is \(name!)")
    }
}

let Ahri = Entity(name: "Ahri", level: 1, HP: 650.0)
Ahri.sayMyName() //output: This is Optional(Ahri)
```

Так как у нас свойства являются `optional`, то необходимо произвести принудительную распаковку (`force unwrap`).

### Inheritance  

Наследование - это механизм, который позволяет создавать новый класс на основе существующего, при этом новый класс может наследовать свойства и методы базового класса, расширять их или изменять.

В Swift, наследование реализуется с помощью ключевого слова `inheritance`. Для того чтобы создать подкласс, нужно использовать ключевое слово `class`, указать имя нового класса, а затем указать имя базового класса через двоеточие. Например:   

```swift
class MyBaseClass {
    var baseProperty: String
    
    init(baseProperty: String) {
        self.baseProperty = baseProperty
    }
    
    func baseMethod() {
        print("This is a method of MyBaseClass")
    }
}

class MySubClass: MyBaseClass {
    var subProperty: Int
    
    init(baseProperty: String, subProperty: Int) {
        self.subProperty = subProperty
        super.init(baseProperty: baseProperty)
    }
    
    override func baseMethod() {
        super.baseMethod()
        print("This is a method of MySubClass")
    }
    
    func subMethod() {
        print("This is a method of MySubClass")
    }
}
```  

Здесь мы создали класс `MyBaseClass`, который содержит свойство `baseProperty` и метод `baseMethod()`. Затем мы создали класс `MySubClass`, который наследует `MyBaseClass` и содержит свойство `subProperty` и метод `subMethod()`. В инициализаторе `MySubClass`, мы используем ключевое слово `super`, чтобы вызвать инициализатор `MyBaseClass`.

Мы также переопределили метод `baseMethod()` в `MySubClass`, добавив к нему новый функционал, а также вызвали метод базового класса с помощью ключевого слова `super`.

Наследование позволяет создавать иерархию классов, где каждый последующий класс наследует свойства и методы предыдущего класса, при этом расширяя или изменяя их функциональность. Наследование также позволяет повторно использовать код, что делает его более поддерживаемым и уменьшает количество дублирования кода.  

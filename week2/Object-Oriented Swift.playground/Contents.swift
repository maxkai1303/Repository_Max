
// Object-Oriented Swift
// 1. Declare a class ​Animal​ with property ​gender​ and method ​eat()​. The data type of gender should be enum Gender as below and when you call eat() method, it will print I eat everything!
// 宣告一個class Animal包含 propertiy gender和method eat( ). gender的 data type必須是enum Gender。 當你call method eat()，他會print “I eat everything”

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    
    let gender: Gender
    init(gender: Gender){
        self.gender = gender
    }
    
    func eat() {
        print("I eat everything")
    }
}




// 2. Declare three classes: ​Elephant​, T​ iger​, H​ orse​ that inherits from Animal and override the eat method to print what they usually eat.
//宣告三個classes Elephant, Tiger, Horse，這些都繼承Animal,並override eat method，print “Elphant(tiger, horse) will eat xxx”

class Elephant : Animal {
    override func eat() {
        print("Elephant eat grass")
    }
}

class Tiger : Animal {
    override func eat() {
        print("Tiger eat Child")
    }
}

class Horse : Animal {
    override func eat() {
        print("Horse eat grass too")
    }
}

let elephant = Elephant(gender:.male)
elephant.eat()

let tiger = Tiger(gender: .undefined)
tiger.eat()

let horse = Horse(gender: .female)
horse.eat()


// 3. Declare a class ​Zoo​ with a property ​weeklyHot​ which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Be ​noticed that ​tiger​, ​elephant​, ​horse​ are instances of class Tiger, Elephant and Horse.

class Zoo {
    var weeklyHot: Animal
    init(weeklyHot: Animal){
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: tiger)

zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

// 4. What’s the difference between ​Struct​ and ​Class

/*
 class 是 Copy By Reference
 strcut 是 Copy By Value
 
 用＝在指定內容的時候 class會將兩個變數儲存到同一物件的記憶體位置 （如果改變一個變數兩個都會影響）
 用 strcut時會複製資料產生一個新的資料 （如果改變一個變數，不會影響另一個）
 struct 有自帶 initializer 的功能，class 需要自己寫init()
 */

// 5. What’s the difference between ​instance method​ and ​type method​ ?
/*
 實體方法(instance method)：先需要生成一個特定型別(類別、結構或列舉)的實體，才能使用這個實體裡的方法
 型別方法(type method)：為定義在特定型別(類別、結構與列舉)上的方法。不是屬於實體，而是屬於這個型別(類別、結構或列舉)本身的方法，與實體方法一樣使用點語法呼叫。
 */


// 6. What does ​Initilizer​ do in class and struct ?

/*
 class/struct 裡的 properties 需要有一個初始值才能使用。
 初始化該實例型別所需的變數, 將收到的參數賦值給相應的變數
 */


// 7. What does ​self​ mean in an instance method and a type method ?
/*
 初始化該實例型別所需的變數, 將收到的參數賦值給相應的變數
 */


// 8. What’s the difference between ​reference type​ and ​value type​ ?

/*
 value type​ 在記憶體中儲存的是實際的值(value)
 reference type 在記憶體中則是儲存所指向的目標位置, 而不是本身的值.
 */

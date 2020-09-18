//1-1. When calculating circle’s area, we use the formula: ​ 2 * radius * Pi​ to get area. Now, please define a variable ​ Pi ​ and assign a value to it. You can refer to the syntax above while do think about using ​ var ​ or ​ let ​ and which data type it should be.

let Pi:Float = 3.14

//1-2. Create two constants x and y of type ​Int​ then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.

let x:Int = 43
let y:Int = 20

var average = (x + y)/2
print(average)

//1-3. Following with Q2, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
// ● Please solve this problem so that we can put the average in the record system.
// ● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).

let o:Float = 43
let p:Float = 20

var average2: Float = (o + p)/2
print(average)
  /*
     Int 型態為整數型態
     Float 型態為浮點數型態
  */

//1-4. Swift is a very powerful language that it can infer the data type for you (​ Type inference ​) while we still need to know the basics well. Please change the following codes into the one with data type.

var flag:Bool = true
var inputString:String = "​Hello world."
let bitsInBite:Int = 8
let averageScore:Float = 86.8

//1-5. Compound assignment ​ operator is very useful when programming. Please create salary as 22000, and use ​ unary plus operator ​ adding 28000 to salary, and it will be 50000 after this process.

var pay = 22000
let raise = 28000
pay += raise

//1-6. You should notice that ​ ‘=’ ​ has difference meaning in programming. In real world, ​ ‘=’ means equal while In programming, ​ ‘=’ ​ means ​assign​. You simply put the right hand side data into left hand side variable or constant.Now please write down the ​Equality​ operator in swift.

var c = 2  // 將2指派給c這個變數
2 == 2  // 比較兩邊是否相符回傳bool
/* inputString  === c
 用來判斷兩個類型別的常數或者變數是否指向同一個物件
 */



//1-7.　Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named ​remain​.

let a = 10
let b = 3
var remain = a % b


//1-8. Please explain the difference between​ ​let​ and​ ​var​.

    /*
       var 是用來宣告變數
       lat 是用來宣告常數
    */

//1-9. Please write down naming conventions and rules you learned in this session.
  /*
   camelCase
   駝峰式命名，以小寫開頭，第二個及之後的單字的首字母則使用大寫
 */

//1-10. What is Type Inference in swift
  /*
    型別推斷
    var x:Int = 10
    可以簡化成
    var x = 10
    Swift能推斷出 x的型別為Int
 */


//1-11. What is the problem about this piece of code?

  /*
  phoneNumber 根據型別推斷應為Int ，無法再宣告該變數為“Hello World.”的String
 */






//2-1. Please create an empty array with String data type and save it in a variable named myFriends​.

var myFriends = [String]()

//2-2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name in to ​myFriends​ array.

myFriends += ["Ian", "Bomi", "Kevin"]

//2-3. Oops,I forget to add ‘Michael’ who is one of my best friend, please help me to add Michael to the end of ​myFriends​ array.

myFriends.append("Michael")
//myFriends += ["Michael","Max"]

//2-4. Because I usually hang out with Kevin, please move Kevin to the beginning of the myFriends​ array.

let element = myFriends.remove(at: 2)
myFriends.insert(element, at: 0)

//2-5. Use for...in to print all the friend in ​myFriends​ ​array.

for friend in myFriends{
    print(friend)
}


//2-6. Now I want to know who is at index 5 in the ​myFriends​ array, try to find the answer for me. Please explain how did you get the answer and why the answer is it.

/*
 沒有人，因為裡面只有四個人 Fatal error: Index out of range
 */

//2-7. How to get the first element in an array?

myFriends.first


//2-8. How to get the last element in an array?

myFriends.last

//2-9. Please create an dictionary with keys of type String, value of type Int, and save it in a variable named ​myCountryNumber

var myCountryNumber = [String : Int]()

//2-10. Please add three keys ‘US’, ‘GB’, ‘JP’ with values 1, 44 , 81.

myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81



//2-11. Change the ‘GB’ value from 44 to 0.

myCountryNumber.updateValue(0, forKey: "GB")
print(myCountryNumber)

//2-12. How to declare a empty dictionary?

/*
 myCountryNumber = [:]
 */

//2-13. How to remove a key-value pair in a dictionary?

myCountryNumber.removeValue(forKey: "US")
print(myCountryNumber)






//3-1. Please use For-Loop and Range to print the last three members in the ​lottoNumbers array.

let lottoNumbers = [10, 9, 8, 7, 6, 5]
let index = lottoNumbers.count
for bingo in lottoNumbers[index - 3 ..< index] {
    print(bingo)
}

//3-2. Please find a method which can help us complete these requirements

for reBingo in lottoNumbers.reversed(){
    print("倒數\(reBingo)")
}

for i in lottoNumbers where i % 2 == 0{
    print("odd: \(i)")
}

//3-3. Please use while loop to solve above question.

var t = 5
while t <= 10 {
    print(t)
    t += 1
}



var v = 10
while v >= 6 {
    if v % 2 == 0 {
        print("%\(v)")
    }
    v -= 1
}

//3-4. Please use repeat-while loop to solve question 2.

var z = 5
repeat{
    print("repeat \(z)")
    z += 1
}while z <= 10


var u = 10
repeat {
    if u % 2 == 0 {
        print("repeat % \(u)")
    }
    u -= 1
}while u >= 6

//3-5. What are the differences between while and repeat-while?

/*
 差在 repeat-while 進行判斷前會執行一次程式，再去進行判斷；而 while 則是先判斷條件，再去決定要不要執行程式。
 */


//3-6. Here is variable ​isRaining​ to record the weather. Please write a statement that if the weather is raining, print ​“It’s raining, I don’t want to work today.”​, otherwise print “Although it’s sunny, I still don’t want to work today.”

var isRaining = false
if isRaining == true {
    print("It’s raining, I don’t want to work today.")
}else{
    print("Although it’s sunny, I still don’t want to work today.")
}

//3-7. In a company, we usually use numbers to represent job levels. Let’s make a example. We have four job levels : Member, Team Leader, Manager, Director. We use 1 to present Member, 2 to Team Leader, 3 to Manager, 4 to Director.Now, create a variable name ​jobLevel​ and assign a number to it. If jobLevel number is in our list, print the relative job title name; if not, just print ​“We don't have this job”​. Please use switch statement to complete this requirement.

var jobLevel = 3
switch jobLevel {
case 1:
    print("present Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
   print("We don't have this job")
}



//4-1. Please declare a function named ​greet​ with ​person​ as argument label and ​name​ as parameter name. This ​greet​ function will return a String. For example, if you call the function greet like this:


func greet(person: String) {
    print("Hello, \(person).")
}

greet(person: "Celeste")

//4-2. Please declare a function named ​multiply​ with two argument ​a​ , ​b​ , and with no return value that when you call this function, compiler will print out the result of ​a * b​. Be noticed that we want to give argument ​b​ with a ​default value​ 10.


func multiply (_ a : Int, b : Int = 10) {
    print(a * b )
}
multiply(5)


//4-3. What’s the difference between argument label and pararmeter name in function ?

/*
 Argument labels 參數標籤 在function {}外呼叫function的時候使用這個標籤來呼叫
 Parameter names 參數名稱 在function {}內調用會使用這個名稱
 不特別宣告的話兩者默認相同，用＿代替Argument labels的話，之後調用時可以省略
 */

//4-4. What are the return type in the following statements?

//String
//Double

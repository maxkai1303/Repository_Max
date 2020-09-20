//  Enumerations and Optionals in Swift

// 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
//● Please create enum named ​Gasoline​ to model gasoline.
//● Every kind of gasoline has its price. Please create a method named ​getPrice in Gasoline enum that will return different price depending on different gasoline.
//● Please establish for . The data type of raw value should be String. For example, should be “92”.
//● Please explain what is enum ​associate value​ and how it works

enum Gasline: String {
    case gas92 = "92",
         gas95 = "95",
         gas98 = "98",
         Diesel = "Diesel"
}
    
    func getPrice(price: Gasline) -> Float {
        switch price {
        case .gas92: return 22.0
        case .gas95: return 23.5
        case .gas98: return 25.5
        case .Diesel: return 19.5
        }
    }
let gas92Price = getPrice(price: .gas92)

Gasline.gas92.rawValue


//使用enum來宣告變數時，還可以為這些變數添加更多相關的值，每個變數的資料型別可以是各不相同的，也可以同時擁有多個Associated Values


// 2. Optional is a very special data type in Swift. Take ​ ​var​ a: ​Int​? = ​10​ ​ ​for example, the value of ​a​ will be ​nil​ or I​ nt​. You should learn how to deal with optional data type.
//● People would like to have pets, but not everyone could have one. Declare a class ​Pet​ with ​name​ property and a class ​People​ with ​pet​ property which will store a Pet instance or nil​. Please try to figure out what data type is suitable for these properties in Pet and People.
//● Please create a People instance and use ​guard let​ to unwrap the ​pet property.
//● Please create another People instance and use ​if let​ to unwrap the ​pet property.


class Pet {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
    func noPet() {
        guard let pet = pet else {
            print("no pet!")
            return
        }
        print("pet name is \(pet.name)")
    }
    
    func GetPet() {
        if let pet = pet {
            print("pet name is \(pet.name)")
        } else {
            print("no pet!")
        }
    }
}

let max = People(pet: nil)
max.noPet()

let Mom = People(pet: Pet(name: "March"))
Mom.GetPet()




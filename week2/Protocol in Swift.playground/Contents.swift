//    Protocol in Swift
// 1. Declare a struct ​Person​ with a ​name​ property type String and a protocol name PoliceMan​. There is only one method ​arrestCriminals​ with no argument and return void in the protocol.

protocol PoliceMan {
    func  arrestCriminals () -> Void
}
protocol ToolMan {
    func fixComputer() -> Void
}

struct Person : PoliceMan , ToolMan {
    
    func arrestCriminals() -> Void { }
    
    func fixComputer() -> Void { }
    
    let name: String
    let toolman: ToolMan
}

struct Engineer: ToolMan {
    func fixComputer() -> Void { }
}


let example = Person (name: "Steven", toolman: Engineer())


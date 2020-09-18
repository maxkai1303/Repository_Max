enum GuessNumberGameError: Error {
    case wrongNumger
}

class GuessNumerGame {
    
    var targetNumber = 10
    
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumger
        }
        print("Guess the right number: \(targetNumber)")
    }
}

//do {
//    let guessNumber = GuessNumerGame()
//    try guessNumber.guess(number: 20)
//}
//catch let Error {
//    print(Error)
//}

let game = GuessNumerGame()

do {
    try game.guess(number: 20)
} catch  {
    print("The target number is \(game.targetNumber)")
}

import Foundation

struct Game{
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: minValue...maxValue)
    private(set) var points = 0
    private(set) var score = 0
    private(set) var round = 0
    
    
    
    mutating func calculatePoints(sliderValue: Double){
        points = 100 - Int(abs(Double(target) - sliderValue))
        score+=points
        round+=1
    }
    
    mutating func restartRound(){
        target = Int.random(in: Game.minValue...Game.maxValue)
        points = 0
    }
    
    mutating func restartGame(){
        score = 0
        round = 0
        target = Int.random(in: Game.minValue...Game.maxValue)
    }
    
    
    
    static let defaultMarks = [Mark(value: 70, date: Date()), Mark(value: 50, date: Date()), Mark(value: 40, date: Date())]
}



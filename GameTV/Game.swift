import Foundation

struct Game{
    static let minValue = 1
    static let maxValue = 100
    private(set) var target = Int.random(in: minValue...maxValue)
    private(set) var points = 0
    
    
    
    mutating func calculatePoints(sliderValue: Double){
        points = 100 - Int(abs(Double(target) - sliderValue))
    }
    
    mutating func restart(){
        target = Int.random(in: Game.minValue...Game.maxValue)
        points = 0
    }
    
    
    
    static let defaultMarks = [Mark(value: 70, date: Date()), Mark(value: 50, date: Date()), Mark(value: 40, date: Date())]
}



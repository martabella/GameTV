import Foundation
import Observation

@Observable
class GameStore{
    private(set) var game = Game()
    
    func restartGameIntent(){
        game.restartGame()
    }
    
    func calculatePointsIntent(value: Double){
        game.calculatePoints(sliderValue: value)
    }
    
    func restarRoundIntent(){
        game.restartRound()
    }
}

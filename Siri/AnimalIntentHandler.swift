
import Foundation
import Intents
import animal_combine

class AnimalIntentHandler: NSObject, AnimalsIntentHandling {

    func handle(intent: AnimalsIntent, completion: @escaping (AnimalsIntentResponse) -> Void) {
        let animal1 = Animal(rawValue: intent.animal1!)
        let animal2 = Animal(rawValue: intent.animal2!)
        let pair = Pair(animal1: animal1!, animal2: animal2!)
        let result = AnimalCombiner.shared.combine(pair: pair)

        completion(.success(animal1: result.animal1.rawValue, animal2: result.animal2.rawValue, newAnimal: result.name))
    }


}

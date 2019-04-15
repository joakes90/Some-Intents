import UIKit

public enum Animal: String {
    case dog
    case cow
    case duck
    case beaver
    case jackrabbit
    case antiloap
    case noamimal
}

public struct Response {
    public let animal1: Animal
    public let animal2: Animal
    public let name: String
    public let image: UIImage
}

public typealias Pair = (Animal, Animal)

public class AnimalCombiner {

    public static let shared = AnimalCombiner()

    public func combine(pair: Pair) -> Response {
        switch pair {
        case (.dog, .cow):
            let response = Response(animal1: .dog, animal2: .cow, name: "Claris", image: #imageLiteral(resourceName: "DogCow_from_LaserWriter_8"))
            return response
        case (.duck, .beaver):
            return Response(animal1: .duck, animal2: .beaver, name: "Platypus", image: #imageLiteral(resourceName: "iu"))
        case (.jackrabbit, .antiloap):
            return Response(animal1: .jackrabbit, animal2: .antiloap, name: "Jackalope", image: #imageLiteral(resourceName: "iu-1"))
        default:
            return Response(animal1: .noamimal, animal2: .noamimal, name: "That's not an animal", image: #imageLiteral(resourceName: "iu-2"))
        }
    }
}

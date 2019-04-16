import Foundation

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
}

public typealias Pair = (animal1: Animal, animal2: Animal)

public class AnimalCombiner {

    public static let shared = AnimalCombiner()

    public func combine(pair: Pair) -> Response {
        switch pair {
        case (.dog, .cow):
            return Response(animal1: .dog, animal2: .cow, name: "Claris")
        case (.duck, .beaver):
            return Response(animal1: .duck, animal2: .beaver, name: "Platypus")
        case (.jackrabbit, .antiloap):
            return Response(animal1: .jackrabbit, animal2: .antiloap, name: "Jackalope")
        default:
            return Response(animal1: .noamimal, animal2: .noamimal, name: "That's not an animal")
        }
    }
}
